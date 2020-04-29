class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  int height;
  int weight;

  Map<String, String> getResults() {
    double bmiValue = weight / ((height / 100) * (height / 100));
    String bmi = bmiValue.toStringAsFixed(1);
    String result;
    String interpretation;
    if (bmiValue >= 25) {
      result = 'OVERWEIGHT';
      interpretation =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmiValue >= 18.5) {
      result = 'NORMAL';
      interpretation = 'You have a normal body weight. Good job!';
    } else {
      result = 'UNDERWEIGHT';
      interpretation =
          'You have a lower than normal body weight. You can eat a bit more.';
    }
    Map<String, String> results = {
      'result': result,
      'bmi': bmi,
      'interpretation': interpretation,
    };
    return results;
  }
}
