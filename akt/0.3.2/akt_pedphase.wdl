version 1.0

task AktPedphase {
  input {
    Boolean pedigreePedigree
    File outputOutputFile
    Boolean outputOutputType
    Boolean threadsThreads
    Boolean excludeExcludeChromosome
  }
  command <<<
    akt pedphase \
      ~{true="--pedigree" false="" pedigreePedigree} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--exclude-chromosome" false="" excludeExcludeChromosome}
  >>>
}