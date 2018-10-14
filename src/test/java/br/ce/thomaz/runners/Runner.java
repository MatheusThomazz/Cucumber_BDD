package br.ce.thomaz.runners;
import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
		        features = "src/test/resources/features/aprender_cucumber.feature",
		        glue = "br.ce.thomaz.steps",
		        plugin = "pretty", 
                monochrome = true,
                snippets = SnippetType.CAMELCASE,
                dryRun = false,
                strict = true)
public class Runner {

}