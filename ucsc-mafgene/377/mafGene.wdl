version 1.0

task MafGene {
  input {
    Boolean useUseFile
    String geneGeneName
    String geneGeneList
    String geneGeneBeds
    String chromChrom
    Boolean exonsExons
    Boolean noNoTrans
    Boolean uniqUniqAa
    Boolean includeIncludeUtr
    String delayDelay
    Boolean noNoDash
    String? outputOutput
  }
  command <<<
    mafGene \
      ~{outputOutput} \
      ~{true="-useFile" false="" useUseFile} \
      ~{if defined(geneGeneName) then ("-geneName " +  '"' + geneGeneName + '"') else ""} \
      ~{if defined(geneGeneList) then ("-geneList " +  '"' + geneGeneList + '"') else ""} \
      ~{if defined(geneGeneBeds) then ("-geneBeds " +  '"' + geneGeneBeds + '"') else ""} \
      ~{if defined(chromChrom) then ("-chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="-exons" false="" exonsExons} \
      ~{true="-noTrans" false="" noNoTrans} \
      ~{true="-uniqAA" false="" uniqUniqAa} \
      ~{true="-includeUtr" false="" includeIncludeUtr} \
      ~{if defined(delayDelay) then ("-delay " +  '"' + delayDelay + '"') else ""} \
      ~{true="-noDash" false="" noNoDash}
  >>>
}