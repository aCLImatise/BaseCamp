version 1.0

task Antismash {
  input {
    String taxTaxOn
    Boolean fullFullHmmer
    Boolean cassisCassis
    Boolean cfCfBordersOnly
    Boolean cfCfCreateClusters
    Boolean clusterClusterHmmer
    Boolean smSmCogTrees
    String ttaTtaThreshold
    Boolean cbCbGeneral
    Boolean cbCbSubClusters
    Boolean cbCbKnownClusters
    Boolean asfAsf
    Boolean pfam2goPfam2go
    String outputOutputDir
    String htmlHtmlTitle
    String htmlHtmlDescription
    String geneGeneFindingTool
    String geneGeneFindingGff3
    String? sequenceSequence
  }
  command <<<
    antismash \
      ~{sequenceSequence} \
      ~{if defined(taxTaxOn) then ("--taxon " +  '"' + taxTaxOn + '"') else ""} \
      ~{true="--fullhmmer" false="" fullFullHmmer} \
      ~{true="--cassis" false="" cassisCassis} \
      ~{true="--cf-borders-only" false="" cfCfBordersOnly} \
      ~{true="--cf-create-clusters" false="" cfCfCreateClusters} \
      ~{true="--clusterhmmer" false="" clusterClusterHmmer} \
      ~{true="--smcog-trees" false="" smSmCogTrees} \
      ~{if defined(ttaTtaThreshold) then ("--tta-threshold " +  '"' + ttaTtaThreshold + '"') else ""} \
      ~{true="--cb-general" false="" cbCbGeneral} \
      ~{true="--cb-subclusters" false="" cbCbSubClusters} \
      ~{true="--cb-knownclusters" false="" cbCbKnownClusters} \
      ~{true="--asf" false="" asfAsf} \
      ~{true="--pfam2go" false="" pfam2goPfam2go} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(htmlHtmlTitle) then ("--html-title " +  '"' + htmlHtmlTitle + '"') else ""} \
      ~{if defined(htmlHtmlDescription) then ("--html-description " +  '"' + htmlHtmlDescription + '"') else ""} \
      ~{if defined(geneGeneFindingTool) then ("--genefinding-tool " +  '"' + geneGeneFindingTool + '"') else ""} \
      ~{if defined(geneGeneFindingGff3) then ("--genefinding-gff3 " +  '"' + geneGeneFindingGff3 + '"') else ""}
  >>>
}