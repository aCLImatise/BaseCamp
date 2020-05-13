version 1.0

task RunMusicc.py {
  input {
    String outOut
    String inputInputFormat
    String outputOutputFormat
    Boolean normalizeNormalize
    String correctCorrect
    Boolean performancePerformance
    Boolean verboseVerbose
    String? inputInputFile
  }
  command <<<
    run_musicc.py \
      ~{inputInputFile} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input_format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output_format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{if defined(correctCorrect) then ("--correct " +  '"' + correctCorrect + '"') else ""} \
      ~{true="--performance" false="" performancePerformance} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}