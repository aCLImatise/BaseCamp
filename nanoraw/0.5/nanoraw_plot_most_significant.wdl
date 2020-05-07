version 1.0

task NanorawPlotMostSignificant {
  input {
    Array[String]+ fast5Fast5BasedIrs
    Array[String]+ fast5Fast5BasedIrs2
    String correctedCorrectedGroup
    String overOverPlotThreshold
    String overOverPlotType
    Array[String]+ obsObsPerBaseFilter
    String testTestType
    String fishersFishersMethodOffset
    Int minimumMinimumTestReads
    String pdfPdfFilename
    String statisticsStatisticsFilename
    String qQValueThreshold
    String sequencesSequencesFilename
    String numNumRegions
    String numNumBases
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_most_significant \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(fast5Fast5BasedIrs2) then ("--fast5-basedirs2 " +  '"' + fast5Fast5BasedIrs2 + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(overOverPlotThreshold) then ("--overplot-threshold " +  '"' + overOverPlotThreshold + '"') else ""} \
      ~{if defined(overOverPlotType) then ("--overplot-type " +  '"' + overOverPlotType + '"') else ""} \
      ~{if defined(obsObsPerBaseFilter) then ("--obs-per-base-filter " +  '"' + obsObsPerBaseFilter + '"') else ""} \
      ~{if defined(testTestType) then ("--test-type " +  '"' + testTestType + '"') else ""} \
      ~{if defined(fishersFishersMethodOffset) then ("--fishers-method-offset " +  '"' + fishersFishersMethodOffset + '"') else ""} \
      ~{if defined(minimumMinimumTestReads) then ("--minimum-test-reads " +  '"' + minimumMinimumTestReads + '"') else ""} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(statisticsStatisticsFilename) then ("--statistics-filename " +  '"' + statisticsStatisticsFilename + '"') else ""} \
      ~{if defined(qQValueThreshold) then ("--q-value-threshold " +  '"' + qQValueThreshold + '"') else ""} \
      ~{if defined(sequencesSequencesFilename) then ("--sequences-filename " +  '"' + sequencesSequencesFilename + '"') else ""} \
      ~{if defined(numNumRegions) then ("--num-regions " +  '"' + numNumRegions + '"') else ""} \
      ~{if defined(numNumBases) then ("--num-bases " +  '"' + numNumBases + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}