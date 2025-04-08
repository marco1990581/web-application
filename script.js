console.log("App deployed via CI/CD pipeline!");
document.addEventListener('DOMContentLoaded', function() {
  // Display build timestamp
  const buildTime = new Date().toISOString();
  const timeElement = document.createElement('p');
  timeElement.textContent = "Build: " + buildTime;
  document.querySelector('.container').appendChild(timeElement);
});
