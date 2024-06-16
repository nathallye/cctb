"use strict";

window.onload = function() {
   document.forms[0].onsubmit = function() {
      if (this.checkValidity()) {
         alert("Form Submitted");
         return false;
      }
   };
};