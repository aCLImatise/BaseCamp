version 1.0

task GsortPATH {
  input {
    String chromosomeChromosomeMappings
    String memoryMemory
    Boolean parentParent
    File? pathPath
    String? genomeGenome
  }
  command <<<
    gsort PATH \
      ~{pathPath} \
      ~{if defined(chromosomeChromosomeMappings) then ("--chromosomemappings " +  '"' + chromosomeChromosomeMappings + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="--parent" false="" parentParent} \
      ~{genomeGenome}
  >>>
}