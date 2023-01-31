package ${YYAndroidPackageName};

import ${YYAndroidPackageName}.R;

import androidx.appcompat.app.AppCompatActivity;
import android.app.Activity;
import androidx.annotation.NonNull;
import android.util.Log;
import android.content.Context;
import android.os.Handler;

import android.os.Build;
import android.os.Vibrator;
import android.os.VibrationEffect;
import android.media.AudioAttributes;

public class HapticsAndroid
{
	RunnerActivity activity;
	Vibrator vibrator;
	AudioAttributes attributes;

	public void Init()
	{
		activity = RunnerActivity.CurrentActivity;
		vibrator = (Vibrator) activity.getSystemService(activity.getApplicationContext().VIBRATOR_SERVICE);
		attributes = new AudioAttributes.Builder()
		                                .setUsage(AudioAttributes.USAGE_GAME)
	                                    .setContentType(AudioAttributes.CONTENT_TYPE_UNKNOWN)
	                                    .setHapticChannelsMuted(false)
	                                    .build();
    }

	public double Vibrate(double duration, double strength)
	{
		vibrator.vibrate(VibrationEffect.createOneShot((long) duration, (int) Math.floor(255*Math.min(Math.max(strength, 0.0), 1.0))), attributes);
		return 1.0;
	}
    
	public double GetSupported()
	{
		return ((android.os.Build.VERSION.SDK_INT >= 26) && vibrator.hasVibrator() && vibrator.hasAmplitudeControl())? 1.0 : 0.0;
	}
}