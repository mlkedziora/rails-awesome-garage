document.addEventListener("DOMContentLoaded", () => {
  const soundButton = document.getElementById("sound-button");

  if (soundButton) {
    soundButton.addEventListener("click", () => {
      const soundStatus = soundButton.querySelector("span");
      const currentState = soundStatus.textContent.split(": ")[1];

      // Toggle the state between ON and OFF
      soundStatus.textContent = `Sound: ${currentState === "ON" ? "OFF" : "ON"}`;
    });
  }
});
