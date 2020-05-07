version 1.0

task BamToAlignmentPriors {
  input {
    Boolean xX
    Boolean ignoreIgnoreXA
    Boolean useUseMapq
    Boolean pP
    Boolean bB
    Boolean sS
    Boolean dD
    Boolean iI
    Boolean iI
    Boolean rR
    Boolean nN
    Boolean mM
    Boolean tT
    Boolean unsortedUnsorted
    String chromosomeChromosome
  }
  command <<<
    bam-to-alignment-priors \
      ~{true="-x" false="" xX} \
      ~{true="--ignore_xa" false="" ignoreIgnoreXA} \
      ~{true="--use_mapq" false="" useUseMapq} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-I" false="" iI} \
      ~{true="-r" false="" rR} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM} \
      ~{true="-T" false="" tT} \
      ~{true="--unsorted" false="" unsortedUnsorted} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""}
  >>>
}