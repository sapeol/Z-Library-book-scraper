import fs from "fs";
import jsdom from "jsdom";
const { JSDOM } = jsdom;
var output = fs.readFileSync("dom.html", "utf8");
const dom = new JSDOM(output);
dom.window.document.querySelectorAll(".bookRow").forEach((el) => {
  console.log(
    el.querySelector("h3 a").innerHTML,
    "type ",
    el.querySelector(".property__file .property_value").innerHTML,
    "BOOK_ID ",
    el.querySelector("h3 a").href
  );
});
