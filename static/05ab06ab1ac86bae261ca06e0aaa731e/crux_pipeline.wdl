version 1.0

task CruxPipeline {
  input {
    Boolean gapGapTolerance
  }
  command <<<
    crux pipeline \
      ~{true="--gap-tolerance" false="" gapGapTolerance}
  >>>
}