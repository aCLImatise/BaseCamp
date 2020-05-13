version 1.0

task ReadCounter {
  input {
    Boolean segSeg
    Int windowWindow
    Int qualityQuality
    Boolean listList
    String chromosomeChromosome
    Boolean buildBuild
    String? bamBamFile
  }
  command <<<
    readCounter \
      ~{bamBamFile} \
      ~{true="--seg" false="" segSeg} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{true="--list" false="" listList} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{true="--build" false="" buildBuild}
  >>>
}