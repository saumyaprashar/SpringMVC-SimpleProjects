package in.mytechblog.web.springmvc.test;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;  
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;  
  
import org.junit.Before;  
import org.junit.Test;  
import org.junit.runner.RunWith;  
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.test.context.ContextConfiguration;  
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;  
import org.springframework.test.web.servlet.MockMvc;  
import org.springframework.test.web.servlet.setup.MockMvcBuilders;  
import in.mytechblog.web.springmvc.controller.HelloWorldController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = { HelloWorldController.class })
public class TestHelloWorldController {

	@Autowired
	HelloWorldController helloWorldController;
	MockMvc mockMvc;

	@Before
	public void setup() {
		mockMvc = MockMvcBuilders.standaloneSetup(helloWorldController).build();
	}

	@Test
	public void testHelloWorldHome() throws Exception{
		mockMvc.perform(get("/"))
		.andExpect(status().isOk())
		.andExpect(view().name("home"));
	}
}
