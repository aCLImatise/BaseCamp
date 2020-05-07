version 1.0

task NanorawPlotMotifCentered {
  input {
    Array[String]+ fast5Fast5BasedIrs
    String motifMotif
    String genomeGenomeFastA
    Array[String]+ fast5Fast5BasedIrs2
    String correctedCorrectedGroup
    String overOverPlotThreshold
    String overOverPlotType
    Array[String]+ obsObsPerBaseFilter
    Boolean deepestDeepestCoverage
    String pdfPdfFilename
    String numNumRegions
    String numNumBases
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_motif_centered \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(motifMotif) then ("--motif " +  '"' + motifMotif + '"') else ""} \
      ~{if defined(genomeGenomeFastA) then ("--genome-fasta " +  '"' + genomeGenomeFastA + '"') else ""} \
      ~{if defined(fast5Fast5BasedIrs2) then ("--fast5-basedirs2 " +  '"' + fast5Fast5BasedIrs2 + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(overOverPlotThreshold) then ("--overplot-threshold " +  '"' + overOverPlotThreshold + '"') else ""} \
      ~{if defined(overOverPlotType) then ("--overplot-type " +  '"' + overOverPlotType + '"') else ""} \
      ~{if defined(obsObsPerBaseFilter) then ("--obs-per-base-filter " +  '"' + obsObsPerBaseFilter + '"') else ""} \
      ~{true="--deepest-coverage" false="" deepestDeepestCoverage} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(numNumRegions) then ("--num-regions " +  '"' + numNumRegions + '"') else ""} \
      ~{if defined(numNumBases) then ("--num-bases " +  '"' + numNumBases + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}