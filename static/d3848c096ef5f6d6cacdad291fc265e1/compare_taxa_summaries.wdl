version 1.0

task CompareTaxaSummaries.py {
  input {
    String taxTaxASummaryFps
    String outputOutputDir
    String comparisonComparisonMode
  }
  command <<<
    compare_taxa_summaries.py \
      ~{if defined(taxTaxASummaryFps) then ("--taxa_summary_fps " +  '"' + taxTaxASummaryFps + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(comparisonComparisonMode) then ("--comparison_mode " +  '"' + comparisonComparisonMode + '"') else ""}
  >>>
}