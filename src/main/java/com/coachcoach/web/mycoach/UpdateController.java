package com.coachcoach.web.mycoach;

import javax.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.coachcoach.service.MemberService;

@Controller
@RequestMapping("/mycoach")
public class UpdateController {

  @Autowired
  ServletContext servletContext;

  @Autowired
  MemberService memberService;


  @GetMapping("updateForm")
  public void updateForm() {}

  @PostMapping("update")
  public void update() {}

  @GetMapping("withdrawForm")
  public void withdrawForm() {}

  @GetMapping("withdraw")
  public void withdraw() {} // refresh로 jsp 출력후 메인 페이지 이동
}
