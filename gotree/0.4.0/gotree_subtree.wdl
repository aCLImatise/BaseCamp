version 1.0

task GotreeSubtree {
  input {
    String inputInput
    String nameName
    String outputOutput
    String formatFormat
    Int seedSeed
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    gotree subtree \
      ~{flagsFlags} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}