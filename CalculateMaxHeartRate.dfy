method CalculateMaxHeartRate(age : int) returns (maxHeartRate : int)
  requires (age>=18)
  ensures (120<=maxHeartRate <=220)
{
  if (age > 100){
    maxHeartRate := 220 -100;
  }else {
    maxHeartRate := 220 -age;
  }
}

method CalculateMaxHeartRate2(age: nat) returns (maxHeartRate: nat)
  requires age >= 18 // Pre-condition: Age must be 18 or older.
  requires age <= 100 // Pre-condition: Age is capped at 100 to prevent unrealistic values.
  ensures maxHeartRate <= 202 // Post-condition: The maximum heart rate must not exceed 202 (220 - 18).
  ensures maxHeartRate >= 120 // Post-condition: The minimum realistic max heart rate for adults (220 - 100).
{
  maxHeartRate := 220 - age;
}
