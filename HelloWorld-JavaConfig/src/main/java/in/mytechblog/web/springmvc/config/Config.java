package in.mytechblog.web.springmvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.JstlView;
import org.springframework.web.servlet.view.UrlBasedViewResolver; 


@Configuration // Marks this class as configuration class
@ComponentScan("in.mytechblog.web.springmvc") // Specifies which package to scan
@EnableWebMvc // Enable the Spring annotation
public class Config {
	@Bean
	public UrlBasedViewResolver setupViewResolver(){
		UrlBasedViewResolver viewResolver = new UrlBasedViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		viewResolver.setViewClass(JstlView.class);
		return viewResolver;
	}
}
