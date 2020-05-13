version 1.0

task Dawg {
  input {
    Boolean helpHelpTrick
    Boolean oO
    String seedSeed
    String repsReps
    Boolean splitSplit
    Boolean appendAppend
    Boolean labelLabel
    String argArgFile
  }
  command <<<
    dawg \
      ~{true="--help-trick" false="" helpHelpTrick} \
      ~{true="-o" false="" oO} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(repsReps) then ("--reps " +  '"' + repsReps + '"') else ""} \
      ~{true="--split" false="" splitSplit} \
      ~{true="--append" false="" appendAppend} \
      ~{true="--label" false="" labelLabel} \
      ~{if defined(argArgFile) then ("--arg-file " +  '"' + argArgFile + '"') else ""}
  >>>
}