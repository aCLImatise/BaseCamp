version 1.0

task GotreeStats {
  input {
    String inputInput
    String outputOutput
    String formatFormat
    Int seedSeed
    Int threadsThreads
    String? nodesNodes
    String? rootedRooted
    String? splitsSplits
    String? tipsTips
  }
  command <<<
    gotree stats \
      ~{nodesNodes} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{rootedRooted} \
      ~{splitsSplits} \
      ~{tipsTips}
  >>>
}