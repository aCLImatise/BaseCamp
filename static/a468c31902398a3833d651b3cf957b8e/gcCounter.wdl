version 1.0

task GcCounter {
  input {
    Boolean segSeg
    Int windowWindow
    Boolean listList
    String chromosomeChromosome
    String? fastFastAReference
  }
  command <<<
    gcCounter \
      ~{fastFastAReference} \
      ~{true="--seg" false="" segSeg} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""}
  >>>
}