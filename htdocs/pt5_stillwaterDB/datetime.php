<?php

    date_default_timezone_set("Asia/Manila");
    $currentdatetime = date("Y-m-d h:i:s", time());

    echo "Time today is $currentdatetime <br> Current date time in seconds . " . strtotime($currentdatetime); 

    echo "Current date time in standard format " . date("F d Y, H:i:s A", strtotime($currentdatetime));