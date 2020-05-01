version 1.0

task CRISPRessoCompare {
  input {
    String comparisonComparison
    Int minMinFrequencyAllelesAroundCutToPlot
    Int maxMaxRowsAllelesAroundCutToPlot
    Boolean suppressSuppressReport
    Boolean placePlaceReportInOutputFolder
    Boolean debugDebug
    String? crisCrisPressoOutputFolder1
    String? crisCrisPressoOutputFolder2
  }
  command <<<
    CRISPRessoCompare \
      ~{crisCrisPressoOutputFolder1} \
      ~{if defined(comparisonComparison) then ("-Comparison " +  '"' + comparisonComparison + '"') else ""} \
      ~{if defined(minMinFrequencyAllelesAroundCutToPlot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + minMinFrequencyAllelesAroundCutToPlot + '"') else ""} \
      ~{if defined(maxMaxRowsAllelesAroundCutToPlot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + maxMaxRowsAllelesAroundCutToPlot + '"') else ""} \
      ~{true="--suppress_report" false="" suppressSuppressReport} \
      ~{true="--place_report_in_output_folder" false="" placePlaceReportInOutputFolder} \
      ~{true="--debug" false="" debugDebug} \
      ~{crisCrisPressoOutputFolder2}
  >>>
}