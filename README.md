Alagu.js
--------

Background:

Chrome packaged apps do not support any kind of templating language because of Content Security Policy. (http://developer.chrome.com/apps/app_csp.html)


 Simple replace based templating language
 which works in Chrome packaged apps.

 Syntax : template is a string with {{ variables }}
          data is a hash of variables with values

 Example: Alagu.render("Hello {{ tester }}", {tester : 'Alagu'})
