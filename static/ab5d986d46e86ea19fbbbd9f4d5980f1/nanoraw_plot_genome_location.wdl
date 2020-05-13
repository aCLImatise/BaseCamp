version 1.0

task NanorawPlotGenomeLocation {
  input {
    Array[String]+ fast5Fast5BasedIrs
    Array[String]+ genomeGenomeLocations
    Array[String]+ fast5Fast5BasedIrs2
    String correctedCorrectedGroup
    String overOverPlotThreshold
    String overOverPlotType
    Array[String]+ obsObsPerBaseFilter
    String pdfPdfFilename
    String numNumBases
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_genome_location \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(genomeGenomeLocations) then ("--genome-locations " +  '"' + genomeGenomeLocations + '"') else ""} \
      ~{if defined(fast5Fast5BasedIrs2) then ("--fast5-basedirs2 " +  '"' + fast5Fast5BasedIrs2 + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(overOverPlotThreshold) then ("--overplot-threshold " +  '"' + overOverPlotThreshold + '"') else ""} \
      ~{if defined(overOverPlotType) then ("--overplot-type " +  '"' + overOverPlotType + '"') else ""} \
      ~{if defined(obsObsPerBaseFilter) then ("--obs-per-base-filter " +  '"' + obsObsPerBaseFilter + '"') else ""} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(numNumBases) then ("--num-bases " +  '"' + numNumBases + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}