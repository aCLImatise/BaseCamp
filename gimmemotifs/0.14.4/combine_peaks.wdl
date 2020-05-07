version 1.0

task CombinePeaks {
  input {
    Boolean iI
    String genomeGenome
    String windowWindow
    Boolean scaleScale
  }
  command <<<
    combine_peaks \
      ~{true="-i" false="" iI} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--scale" false="" scaleScale}
  >>>
}