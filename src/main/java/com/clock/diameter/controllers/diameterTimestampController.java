package com.clock.diameter.controllers;

import com.clock.diameter.services.diameterTimeStamp;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@RestController
public class diameterTimestampController {
    static final long diameterOffset = 2208988800l;

    @ResponseBody
    @RequestMapping(value = "/")
    public ModelAndView homePage(HttpServletRequest request, HttpServletResponse response) {
        Calendar currentTime = Calendar.getInstance();
        long timeInMilles = currentTime.getTimeInMillis() / 1000;
        String diameterTimestampEpoch = String.valueOf(timeInMilles + diameterOffset);
        System.out.println("Time in Millies --> " + timeInMilles);
        var mav = new ModelAndView();
        String toPrint = "Hello! I am Diameter Clock, current time diameter epoch value is --> " + diameterTimestampEpoch + "";
        mav.setViewName("index");
        mav.addObject("message", diameterTimestampEpoch);
//        model.put("message", response);
        return mav;
    }

    @ResponseBody
    @RequestMapping(value = "/customClock")
    public ModelAndView customClock(@RequestParam(required = false) String epochValue, @RequestParam(required = false) String humanDateTime, @RequestParam(required = false) String diamTimeStamp, HttpServletRequest request, HttpServletResponse response) {
        var mav = new ModelAndView();
        Calendar currentTime = Calendar.getInstance();
        String messageToPrint = "Incorrect Input";
        SimpleDateFormat formator = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
        String viewname = "customClock";

        try {
            if (diamTimeStamp != null && !diamTimeStamp.isEmpty()) {
                long epochFromDiamTime = (Long.parseLong(diamTimeStamp) - diameterOffset) * 1000;
                Date date = new Date(epochFromDiamTime);
                mav.addObject("epochTimeStamp", epochFromDiamTime);
                mav.addObject("diamToHumanDate", formator.format(date));
                messageToPrint = diamTimeStamp;
                viewname="diamTimeToDate";
            } else if (epochValue != null && !epochValue.isEmpty()) {
                long timeToConvert = Long.valueOf(epochValue) + diameterOffset;
                mav.addObject("epochTimeStamp", epochValue);
                messageToPrint = String.valueOf(timeToConvert);
            } else if (humanDateTime == null || humanDateTime.isEmpty()) {
                Date dateToConvert = currentTime.getTime();
                String timeToConvert = formator.format(dateToConvert);
                mav.addObject("timeToConvert", timeToConvert);
//            mav.addObject("epochTimeStamp", timeToConvert);
                messageToPrint = String.valueOf(new diameterTimeStamp().getCurrentDiameterTimestampEpoch(timeToConvert));
            } else {
                Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm").parse(humanDateTime);
                System.out.println("Date before converting --> " + date.toString());
                currentTime.setTime(date);
                currentTime.set(Calendar.SECOND, 0);
                currentTime.set(Calendar.MILLISECOND, 0);
                Date convertedTime = currentTime.getTime();
                String timeToConvert = formator.format(convertedTime);
                mav.addObject("timeToConvert", timeToConvert);
                messageToPrint = String.valueOf(new diameterTimeStamp().getCurrentDiameterTimestampEpoch(timeToConvert));

            }

        } catch (ParseException e) {
            e.printStackTrace();
        }
        mav.setViewName(viewname);
        mav.addObject("diameterTimeStamp", messageToPrint);
        return mav;
    }
}
