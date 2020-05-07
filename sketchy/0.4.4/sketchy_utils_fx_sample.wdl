version 1.0

task SketchyUtilsFxSample {
  input {
    File fastFastX
    String outputOutput
    Int sampleSample
    Boolean replacementReplacement
    Boolean seedSeed
  }
  command <<<
    sketchy utils fx-sample \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{true="--replacement" false="" replacementReplacement} \
      ~{true="--seed" false="" seedSeed}
  >>>
}