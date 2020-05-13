version 1.0

task Gsort {
  input {
    String chromosomeChromosomeMappings
    String memoryMemory
    Boolean parentParent
  }
  command <<<
    gsort \
      ~{if defined(chromosomeChromosomeMappings) then ("--chromosomemappings " +  '"' + chromosomeChromosomeMappings + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="--parent" false="" parentParent}
  >>>
}