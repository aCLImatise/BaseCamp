version 1.0

task AnviGenVariabilityMatrix {
  input {
    String contigsContigsDb
    File splitsSplitsOfInterest
    File samplesSamplesOfInterest
    Int numNumPositionsFromEachSplit
    Int minMinScatter
    String minMinRatioOfCompetingSNts
    File outputOutputFile
    String? summarySummaryDict
  }
  command <<<
    anvi-gen-variability-matrix \
      ~{summarySummaryDict} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(splitsSplitsOfInterest) then ("--splits-of-interest " +  '"' + splitsSplitsOfInterest + '"') else ""} \
      ~{if defined(samplesSamplesOfInterest) then ("--samples-of-interest " +  '"' + samplesSamplesOfInterest + '"') else ""} \
      ~{if defined(numNumPositionsFromEachSplit) then ("--num-positions-from-each-split " +  '"' + numNumPositionsFromEachSplit + '"') else ""} \
      ~{if defined(minMinScatter) then ("--min-scatter " +  '"' + minMinScatter + '"') else ""} \
      ~{if defined(minMinRatioOfCompetingSNts) then ("--min-ratio-of-competings-nts " +  '"' + minMinRatioOfCompetingSNts + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""}
  >>>
}