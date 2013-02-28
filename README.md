Alagu.js
========
Simple replace based templating language (which works in Chrome packaged apps).

Background
----------

Chrome packaged apps do not support any kind of templating language because of Content Security Policy. (http://developer.chrome.com/apps/app_csp.html)

Usage
-----

```
   template =  Alagu.render("Hello {{ tester }}", {tester : 'Alagu'})
   console.log(template)
```

Gives

```
 Hello Alagu
```
