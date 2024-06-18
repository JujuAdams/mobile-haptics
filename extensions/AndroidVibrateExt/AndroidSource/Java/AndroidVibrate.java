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

public class AndroidVibrate
{
	RunnerActivity activity;
	Vibrator vibrator;
	AudioAttributes attributes;

	private VibrationEffect weakHaptic   = VibrationEffect.createOneShot((long)16.0, 120);
	private VibrationEffect strongHaptic = VibrationEffect.createOneShot((long)16.0, 255);

	long[] doubleTimings = {33, 100, 33};
	int[] doubleAmplitudes = {170, 0, 120};
	private VibrationEffect doubleHaptic = VibrationEffect.createWaveform(doubleTimings, doubleAmplitudes, -1);

	long[] tripleTimings = {33, 60, 33, 60, 33};
	int[] tripleAmplitudes = {150, 0, 175, 0, 200};
	private VibrationEffect tripleHaptic = VibrationEffect.createWaveform(tripleTimings, tripleAmplitudes, -1);	



	public void Init()
	{
		Log.i("yoyo", "Welcome to AndroidVibrate by Juju Adams! This is version 2.0.0, 2024-06-18");
		
		activity = RunnerActivity.CurrentActivity;
		vibrator = (Vibrator) activity.getSystemService(activity.getApplicationContext().VIBRATOR_SERVICE);
		attributes = new AudioAttributes.Builder()
		                                .setUsage(AudioAttributes.USAGE_GAME)
	                                    .setContentType(AudioAttributes.CONTENT_TYPE_UNKNOWN)
	                                    .setHapticChannelsMuted(false)
	                                    .build();
    }

	public double Weak()
	{
		vibrator.vibrate(weakHaptic, attributes);
		return 1.0;
	}

	public double Strong()
	{
		vibrator.vibrate(strongHaptic, attributes);
		return 1.0;
	}

	public double Double()
	{
		vibrator.vibrate(doubleHaptic, attributes);
		return 1.0;
	}

	public double Triple()
	{
		vibrator.vibrate(tripleHaptic, attributes);
		return 1.0;
	}
    
	public double GetSupported()
	{
		return ((android.os.Build.VERSION.SDK_INT >= 26) && vibrator.hasVibrator() && vibrator.hasAmplitudeControl())? 1.0 : 0.0;
	}
}