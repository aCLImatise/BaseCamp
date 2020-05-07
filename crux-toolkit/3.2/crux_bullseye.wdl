version 1.0

task CruxBullseye {
  input {
    Boolean gapGapTolerance
  }
  command <<<
    crux bullseye \
      ~{true="--gap-tolerance" false="" gapGapTolerance}
  >>>
}