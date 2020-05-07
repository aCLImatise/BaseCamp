version 1.0

task Efetch {
  input {
    Boolean formatFormat
    Boolean modeMode
    Boolean styleStyle
    Boolean dbDb
    Boolean idId
    Boolean seqSeqStart
    Boolean seqSeqStop
    Boolean strandStrand
    Boolean revRevComp
    Boolean chrChrStart
    Boolean chrChrStop
    Boolean complexityComplexity
    Boolean extendExtend
    Boolean extraExtraFeat
    Boolean startStart
    Boolean stopStop
    Boolean rawRaw
    Boolean jsonJson
    String? abstractAbstract
    String? biocBioc
    String? medlineMedline
    String? nativeNative
    String? nativeNative
    String? snpSnp
    String? sraSra
    String? structureStructure
    String? taxonomyTaxonomy
  }
  command <<<
    efetch \
      ~{abstractAbstract} \
      ~{snpSnp} \
      ~{true="-format" false="" formatFormat} \
      ~{true="-mode" false="" modeMode} \
      ~{true="-style" false="" styleStyle} \
      ~{true="-db" false="" dbDb} \
      ~{true="-id" false="" idId} \
      ~{true="-seq_start" false="" seqSeqStart} \
      ~{true="-seq_stop" false="" seqSeqStop} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-revcomp" false="" revRevComp} \
      ~{true="-chr_start" false="" chrChrStart} \
      ~{true="-chr_stop" false="" chrChrStop} \
      ~{true="-complexity" false="" complexityComplexity} \
      ~{true="-extend" false="" extendExtend} \
      ~{true="-extrafeat" false="" extraExtraFeat} \
      ~{true="-start" false="" startStart} \
      ~{true="-stop" false="" stopStop} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-json" false="" jsonJson} \
      ~{biocBioc} \
      ~{sraSra} \
      ~{medlineMedline} \
      ~{structureStructure} \
      ~{nativeNative} \
      ~{taxonomyTaxonomy} \
      ~{nativeNative}
  >>>
}