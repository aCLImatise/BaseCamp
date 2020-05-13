version 1.0

task GotreeSupportScale {
  input {
    Float factorFactor
    String formatFormat
    String inputInput
    String outputOutput
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    gotree support scale \
      ~{flagsFlags} \
      ~{if defined(factorFactor) then ("--factor " +  '"' + factorFactor + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}