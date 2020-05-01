version 1.0

task Mapsplice.py {
  input {
    String xX
    Boolean pP
    Boolean oO
    Boolean qualQualScale
    Boolean bamBam
    Boolean keepKeepTmp
    Boolean sS
    Boolean minMinMapLen
    Boolean kK
    Boolean iI
    Boolean iI
    Boolean nonNonCanonicalDoubleAnchor
    Boolean nonNonCanonicalSingleAnchor
    Boolean filteringFiltering
    Boolean mM
    Boolean maxMaxAppendMis
    Boolean insIns
    Boolean delDel
    Boolean fusionFusion
    Boolean minMinFusionDistance
    Boolean geneGeneGtf
    Boolean vV
  }
  command <<<
    mapsplice.py \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="--qual-scale" false="" qualQualScale} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{true="-s" false="" sS} \
      ~{true="--min-map-len" false="" minMinMapLen} \
      ~{true="-k" false="" kK} \
      ~{true="-i" false="" iI} \
      ~{true="-I" false="" iI} \
      ~{true="--non-canonical-double-anchor" false="" nonNonCanonicalDoubleAnchor} \
      ~{true="--non-canonical-single-anchor" false="" nonNonCanonicalSingleAnchor} \
      ~{true="--filtering" false="" filteringFiltering} \
      ~{true="-m" false="" mM} \
      ~{true="--max-append-mis" false="" maxMaxAppendMis} \
      ~{true="--ins" false="" insIns} \
      ~{true="--del" false="" delDel} \
      ~{true="--fusion" false="" fusionFusion} \
      ~{true="--min-fusion-distance" false="" minMinFusionDistance} \
      ~{true="--gene-gtf" false="" geneGeneGtf} \
      ~{true="-v" false="" vV}
  >>>
}