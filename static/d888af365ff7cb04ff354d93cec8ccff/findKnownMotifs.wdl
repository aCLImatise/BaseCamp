version 1.0

task FindKnownMotifs.pl {
  input {
    String mM
    Boolean strandStrand
    Boolean statStat
    Boolean pPValue
    Boolean optimizeOptimize
    Boolean homerHomer
    Boolean homeHomeR2
    Boolean pP
    Boolean cacheCache
    Boolean bitsBits
    Boolean dbviewDbview
    Boolean seqSeqLogo
    Boolean rnaRna
  }
  command <<<
    findKnownMotifs.pl \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-stat" false="" statStat} \
      ~{true="-pvalue" false="" pPValue} \
      ~{true="-optimize" false="" optimizeOptimize} \
      ~{true="-homer" false="" homerHomer} \
      ~{true="-homer2" false="" homeHomeR2} \
      ~{true="-p" false="" pP} \
      ~{true="-cache" false="" cacheCache} \
      ~{true="-bits" false="" bitsBits} \
      ~{true="-dbview" false="" dbviewDbview} \
      ~{true="-seqlogo" false="" seqSeqLogo} \
      ~{true="-rna" false="" rnaRna}
  >>>
}