package com.springapp.mvc.controllers;

import com.springapp.mvc.common.GoodInfo;
import com.springapp.mvc.services.CartService;
import com.springapp.mvc.services.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Катя on 24.02.2016.
 */
@Controller
@RequestMapping("/cart")
public class CarController {


    @Autowired
    private HttpServletRequest request;
    @Autowired
    private GoodService goodService;
    @Autowired
    private CartService cartService;


    @RequestMapping(value = "/add/{id}",method = RequestMethod.GET)
    public String addInCart(@PathVariable("id") Long id){
        GoodInfo goodInfo = goodService.getGoodById(id);
        cartService.addInCart(goodInfo, request);
        return "redirect:/cart";
    }
    @RequestMapping(method = RequestMethod.GET)
    public String renderCart(){
        return "cart";
    }

}
