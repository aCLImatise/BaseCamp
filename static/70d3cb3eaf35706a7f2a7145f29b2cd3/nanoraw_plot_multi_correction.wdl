version 1.0

task NanorawPlotMultiCorrection {
  input {
    Array[String]+ fast5Fast5BasedIrs
    String correctedCorrectedGroup
    Array[String]+ baseBaseCallSubgroups
    String pdfPdfFilename
    Array[String]+ genomeGenomeLocations
    Boolean includeIncludeOriginalBaseCalls
    String numNumReadsPerPlot
    String numNumRegions
    String numNumObs
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_multi_correction \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(baseBaseCallSubgroups) then ("--basecall-subgroups " +  '"' + baseBaseCallSubgroups + '"') else ""} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(genomeGenomeLocations) then ("--genome-locations " +  '"' + genomeGenomeLocations + '"') else ""} \
      ~{true="--include-original-basecalls" false="" includeIncludeOriginalBaseCalls} \
      ~{if defined(numNumReadsPerPlot) then ("--num-reads-per-plot " +  '"' + numNumReadsPerPlot + '"') else ""} \
      ~{if defined(numNumRegions) then ("--num-regions " +  '"' + numNumRegions + '"') else ""} \
      ~{if defined(numNumObs) then ("--num-obs " +  '"' + numNumObs + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}