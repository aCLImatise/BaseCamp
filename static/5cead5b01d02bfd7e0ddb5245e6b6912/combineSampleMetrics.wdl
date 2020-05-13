version 1.0

task CombineSampleMetrics.sh {
  input {
    Boolean forceForce
    String metricsMetrics
    File outputOutput
    Boolean spacesSpaces
    Boolean vV
    String? sampleSampleDirsFile
  }
  command <<<
    combineSampleMetrics.sh \
      ~{sampleSampleDirsFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--spaces" false="" spacesSpaces} \
      ~{true="-v" false="" vV}
  >>>
}