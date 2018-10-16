package br.ce.thomaz.runners;
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		        features = "src/test/resources/features/inserir_conta.feature",
		        glue = "br.ce.thomaz.steps",
		        tags = {"~@ignore"},
		        plugin = {"pretty", "html:target/report", "json:target/reportJson.json"}, 
                monochrome = true,
                snippets = SnippetType.CAMELCASE,
                dryRun = false,
                strict = true)
public class Runner {

}
