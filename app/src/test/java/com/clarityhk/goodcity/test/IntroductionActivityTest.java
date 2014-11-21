package com.clarityhk.goodcity.test;

import android.widget.TextView;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

import static org.hamcrest.CoreMatchers.equalTo;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertThat;

import com.clarityhk.goodcity.activities.IntroductionActivity;
import com.clarityhk.goodcity.R;

@Config(emulateSdk = 18)
@RunWith(RobolectricTestRunner.class)
public class IntroductionActivityTest {

    private IntroductionActivity activity;

    @Before
    public void setup()  {
        activity = Robolectric.buildActivity(IntroductionActivity.class).create().get();
    }

    @Test
    public void checkActivityNotNull() throws Exception {
        assertNotNull(activity);
    }

    @Test
    public void testViewElements() throws Exception {


        TextView activityTitle= (TextView) activity.findViewById(R.id.introduction_activity_title);
        String activityTitleText = activityTitle.getText().toString();

        assertThat(activityTitleText, equalTo("GoodCity.HK"));

    }


}
