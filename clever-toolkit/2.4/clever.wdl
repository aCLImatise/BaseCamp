version 1.0

task Clever {
  input {
    Boolean sortedSorted
    Boolean useUseXA
    Boolean useUseMapq
    String tT
    Boolean fF
    String wW
    Boolean aA
    Boolean kK
    Boolean rR
    String cC
    String pP
    Boolean iI
    String chromosomeChromosome
  }
  command <<<
    clever \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="--use_xa" false="" useUseXA} \
      ~{true="--use_mapq" false="" useUseMapq} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-k" false="" kK} \
      ~{true="-r" false="" rR} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-I" false="" iI} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""}
  >>>
}