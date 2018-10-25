package br.ce.thomaz.runners;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		        features = "src/test/resources/features/",
		        glue = "br.ce.thomaz.steps",
		        tags = {"@funcionais"},
		        plugin = {"pretty", "html:target/report", "json:target/reportJson.json"}, 
                monochrome = true,
                snippets = SnippetType.CAMELCASE,
                dryRun = false,
                strict = true)
public class RunnerFuncionalTest {

	@BeforeClass
	public static void reset() {
		System.setProperty("webdriver.chrome.driver","C:\\driver crome\\chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get("http://srbarriga.herokuapp.com");
		driver.findElement(By.id("email")).sendKeys("matheus@matheus");
		driver.findElement(By.name("senha")).sendKeys("123");
		driver.findElement(By.tagName("button")).click();
		driver.findElement(By.linkText("reset")).click();
		driver.quit();
	}
	
}
