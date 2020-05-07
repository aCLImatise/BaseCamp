version 1.0

task ConditionalUncoveredProbability.py {
  input {
    Boolean verboseVerbose
    String inputInputPath
    String outputOutputPath
    String lookLookAhead
    String metricsMetrics
    Boolean showShowMetrics
  }
  command <<<
    conditional_uncovered_probability.py \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(inputInputPath) then ("--input_path " +  '"' + inputInputPath + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(lookLookAhead) then ("--look_ahead " +  '"' + lookLookAhead + '"') else ""} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""} \
      ~{true="--show_metrics" false="" showShowMetrics}
  >>>
}