const puppeteer = require("puppeteer");

(async () => {
	const browser = await puppeteer.launch();
	const page = await browser.newPage();
	await page.goto("https://google.com");
	await page.screenshot({ path: "out/sample.png" });
	await browser.close();
})();