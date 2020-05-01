version 1.0

task AnviGenVariabilityNetwork {
  input {
    String inputInputFile
    String maxMaxNumUniquePositions
    File outputOutputFile
  }
  command <<<
    anvi-gen-variability-network \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(maxMaxNumUniquePositions) then ("--max-num-unique-positions " +  '"' + maxMaxNumUniquePositions + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}