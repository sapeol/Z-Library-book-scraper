import fs from 'fs'
import jsdom  from "jsdom";
const { JSDOM } = jsdom;
var output = fs.readFileSync('dom.html','utf8')
const dom = new JSDOM(output);
dom.window.document.querySelectorAll('.bookRow h3 a').forEach(el => {
    console.log(el.innerHTML, "BOOK_ID ", el.href)
});


