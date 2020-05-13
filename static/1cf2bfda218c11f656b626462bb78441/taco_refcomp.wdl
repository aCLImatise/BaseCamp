version 1.0

task TacoRefcomp {
  input {
    String outputOutputDir
    String numNumProcesses
    Boolean cpCpAt
    String cpCpAtSpecies
    String cpCpAtGenome
    String refRefGtf
    String testTestGtf
  }
  command <<<
    taco_refcomp \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(numNumProcesses) then ("--num-processes " +  '"' + numNumProcesses + '"') else ""} \
      ~{true="--cpat" false="" cpCpAt} \
      ~{if defined(cpCpAtSpecies) then ("--cpat-species " +  '"' + cpCpAtSpecies + '"') else ""} \
      ~{if defined(cpCpAtGenome) then ("--cpat-genome " +  '"' + cpCpAtGenome + '"') else ""} \
      ~{if defined(refRefGtf) then ("--ref-gtf " +  '"' + refRefGtf + '"') else ""} \
      ~{if defined(testTestGtf) then ("--test-gtf " +  '"' + testTestGtf + '"') else ""}
  >>>
}