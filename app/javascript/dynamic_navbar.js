document.addEventListener("DOMContentLoaded", () => {
  console.log("Dynamic Navbar Script Loaded");

  const navbar = document.getElementById("navbar");
  const backgroundImage = document.querySelector(".homepage");

  if (navbar && backgroundImage) {
    const bgImageUrl = backgroundImage.style.backgroundImage.slice(5, -2); // Extract URL
    console.log("Background Image URL:", bgImageUrl);

    if (!bgImageUrl) {
      console.error("No background image found.");
      return;
    }

    const getBackgroundColor = () => {
      const canvas = document.createElement("canvas");
      const ctx = canvas.getContext("2d");
      const image = new Image();

      image.src = bgImageUrl;
      image.crossOrigin = "Anonymous"; // Allow cross-origin images

      image.onload = () => {
        canvas.width = image.width;
        canvas.height = image.height;
        ctx.drawImage(image, 0, 0);
        const pixel = ctx.getImageData(0, 0, 1, 1).data; // Get the top-left pixel color
        const [r, g, b] = pixel;

        console.log("Pixel RGB:", { r, g, b });

        // Calculate luminance to determine text color
        const luminance = 0.299 * r + 0.587 * g + 0.114 * b;
        navbar.style.color = luminance > 128 ? "#000" : "#fff"; // Light or dark text
      };

      image.onerror = () => {
        console.error("Failed to load image:", bgImageUrl);
      };
    };

    getBackgroundColor();
  } else {
    console.error("Navbar or background image not found.");
  }
});
