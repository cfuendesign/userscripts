// ==UserScript==
// @name Ecosia Nuold
// @match *.ecosia.*
// @run-at document-start
// ==/UserScript==

const ecosiaOldLogo = 'https://solarimpulse.com/files/companies/logo/2018-01-10-091223/Ecosia-org.png'

const logoDiv = document.querySelector(".main-header__logo-link");
const chromeAnnoyance = document.querySelector(
  ".main-header__install-cta[data-v-98e7f858]"
);
const logoA = document.querySelector(
  ".main-header__logo-link[data-v-98e7f858]"
);
const root = document.querySelector(":root");

logoDiv.innerHTML = `<img src="${ecosiaOldLogo}">`;
logoDiv.style.height = "40px";
logoA.style.marginRight = "16px";
logoA.style.marginLeft = "8px";
chromeAnnoyance.style.display = "none";
root.style.setProperty('--color-button-content-tertiary', '#36acb8')
root.style.setProperty('--color-brand-primary', '#36acb8')