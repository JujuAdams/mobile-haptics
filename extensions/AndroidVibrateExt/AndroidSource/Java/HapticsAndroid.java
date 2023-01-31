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

	public double Weak()
	{
		vibrator.vibrate(VibrationEffect.createOneShot((long)16.0, 120), attributes);
		return 1.0;
	}

	public double Strong()
	{
		vibrator.vibrate(VibrationEffect.createOneShot((long)16.0, 255), attributes);
		return 1.0;
	}

	public double Double()
	{
		long[] timings = {33, 100, 33};
		int[] amplitudes = {170, 0, 120};
		vibrator.vibrate(VibrationEffect.createWaveform(timings, amplitudes, -1), attributes);
		return 1.0;
	}

	public double Triple()
	{
		long[] timings = {33, 60, 33, 60, 33};
		int[] amplitudes = {150, 0, 175, 0, 200};
		vibrator.vibrate(VibrationEffect.createWaveform(timings, amplitudes, -1), attributes);
		return 1.0;
	}
    
	public double GetSupported()
	{
		return ((android.os.Build.VERSION.SDK_INT >= 26) && vibrator.hasVibrator())? 1.0 : 0.0;
	}

	public double GetAmplitudeControl()
	{
		return vibrator.hasAmplitudeControl()? 1.0 : 0.0;
	}
}