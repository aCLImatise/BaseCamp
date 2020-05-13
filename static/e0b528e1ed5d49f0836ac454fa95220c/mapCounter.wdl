version 1.0

task MapCounter {
  input {
    Boolean segSeg
    Int windowWindow
    Boolean listList
    String chromosomeChromosome
    String? bigwigBigwigFile
  }
  command <<<
    mapCounter \
      ~{bigwigBigwigFile} \
      ~{true="--seg" false="" segSeg} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""}
  >>>
}