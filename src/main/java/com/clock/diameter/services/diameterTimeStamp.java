package com.clock.diameter.services;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class diameterTimeStamp {
    private long diameterTimestampEpoch;
    private long diameterOffset = (long) 2208988800.0;

    public long getCurrentDiameterTimestampEpoch(String timeToConvert){
        try {
            Date date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").parse(timeToConvert);
            Calendar currentTime = Calendar.getInstance();
            currentTime.setTime(date);
            long timeInMilles= currentTime.getTimeInMillis()/1000;
            diameterTimestampEpoch = timeInMilles + diameterOffset;
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return diameterTimestampEpoch;
    }
}
