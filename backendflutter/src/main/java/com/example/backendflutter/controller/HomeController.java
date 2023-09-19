package com.example.backendflutter.controller;

import com.example.backendflutter.entity.Home;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

public class HomeController {
    @RequestMapping("/destination")
    public List<Home> getAllDestination() {
        List<Home> homes = new ArrayList<>();

        Home home1 = new Home();
        home1.setName("Hoi An");
        home1.setImage("assets/image/tamdao.jpg");
        homes.add(home1);

        Home home2 = new Home();
        home2.setName("Sai Gon");
        home2.setImage("assets/image/sapa.png");
        homes.add(home2);

        Home home3 = new Home();
        home3.setName("Da Lat");
        home3.setImage("assets/image/hagiang.jpg");
        homes.add(home3);

        Home home4 = new Home();
        home4.setName("Ha Noi");
        home4.setImage("assets/image/halong.jpg");
        homes.add(home4);

        return homes;
    }

}
