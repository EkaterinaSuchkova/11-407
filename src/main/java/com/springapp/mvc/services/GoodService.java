package com.springapp.mvc.services;

import com.springapp.mvc.common.GoodInfo;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

/**
 * Created by Катя on 24.02.2016.
 */

@Service
public class GoodService {

    public GoodInfo getGoodById(long id){
        return new GoodInfo(id,"New toy",2L, new BigDecimal(3));
    }

}
