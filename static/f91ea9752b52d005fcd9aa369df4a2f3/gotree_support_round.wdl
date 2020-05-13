version 1.0

task GotreeSupportRound {
  input {
    Int precisionPrecision
    String formatFormat
    String inputInput
    String outputOutput
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    gotree support round \
      ~{flagsFlags} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}