version 1.0

task EasypqpLibrary {
  input {
    File outOut
    File psmPsmTsv
    File peptidePeptideTsv
    File rtRtReference
    String rtRtFilter
    File imImReference
    String imImFilter
    Float psmPsmFdrThreshold
    Float peptidePeptideFdrThreshold
    Float proteinProteinFdrThreshold
    Float rtRtLowessFraction
    Float rtRtPsmFdrThreshold
    Float imImLowessFraction
    Float imImPsmFdrThreshold
    Float pi0Pi0Lambda
    File peptidePeptidePlot
    File proteinProteinPlot
    Int minMinPeptides
    Boolean proteoProteoTypic
    Boolean consensusConsensus
  }
  command <<<
    easypqp library \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(psmPsmTsv) then ("--psmtsv " +  '"' + psmPsmTsv + '"') else ""} \
      ~{if defined(peptidePeptideTsv) then ("--peptidetsv " +  '"' + peptidePeptideTsv + '"') else ""} \
      ~{if defined(rtRtReference) then ("--rt_reference " +  '"' + rtRtReference + '"') else ""} \
      ~{if defined(rtRtFilter) then ("--rt_filter " +  '"' + rtRtFilter + '"') else ""} \
      ~{if defined(imImReference) then ("--im_reference " +  '"' + imImReference + '"') else ""} \
      ~{if defined(imImFilter) then ("--im_filter " +  '"' + imImFilter + '"') else ""} \
      ~{if defined(psmPsmFdrThreshold) then ("--psm_fdr_threshold " +  '"' + psmPsmFdrThreshold + '"') else ""} \
      ~{if defined(peptidePeptideFdrThreshold) then ("--peptide_fdr_threshold " +  '"' + peptidePeptideFdrThreshold + '"') else ""} \
      ~{if defined(proteinProteinFdrThreshold) then ("--protein_fdr_threshold " +  '"' + proteinProteinFdrThreshold + '"') else ""} \
      ~{if defined(rtRtLowessFraction) then ("--rt_lowess_fraction " +  '"' + rtRtLowessFraction + '"') else ""} \
      ~{if defined(rtRtPsmFdrThreshold) then ("--rt_psm_fdr_threshold " +  '"' + rtRtPsmFdrThreshold + '"') else ""} \
      ~{if defined(imImLowessFraction) then ("--im_lowess_fraction " +  '"' + imImLowessFraction + '"') else ""} \
      ~{if defined(imImPsmFdrThreshold) then ("--im_psm_fdr_threshold " +  '"' + imImPsmFdrThreshold + '"') else ""} \
      ~{if defined(pi0Pi0Lambda) then ("--pi0_lambda " +  '"' + pi0Pi0Lambda + '"') else ""} \
      ~{if defined(peptidePeptidePlot) then ("--peptide_plot " +  '"' + peptidePeptidePlot + '"') else ""} \
      ~{if defined(proteinProteinPlot) then ("--protein_plot " +  '"' + proteinProteinPlot + '"') else ""} \
      ~{if defined(minMinPeptides) then ("--min_peptides " +  '"' + minMinPeptides + '"') else ""} \
      ~{true="--proteotypic" false="" proteoProteoTypic} \
      ~{true="--consensus" false="" consensusConsensus}
  >>>
}