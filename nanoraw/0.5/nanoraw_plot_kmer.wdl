version 1.0

task NanorawPlotKmer {
  input {
    Array[String]+ fast5Fast5BasedIrs
    Boolean upstreamUpstreamBases
    Boolean downstreamDownstreamBases
    Boolean readReadMean
    String numNumKmErThreshold
    String correctedCorrectedGroup
    String pdfPdfFilename
    String numNumReads
    String rRDataFilename
    Boolean dontDontPlot
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_kmer \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{true="--upstream-bases" false="" upstreamUpstreamBases} \
      ~{true="--downstream-bases" false="" downstreamDownstreamBases} \
      ~{true="--read-mean" false="" readReadMean} \
      ~{if defined(numNumKmErThreshold) then ("--num-kmer-threshold " +  '"' + numNumKmErThreshold + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(rRDataFilename) then ("--r-data-filename " +  '"' + rRDataFilename + '"') else ""} \
      ~{true="--dont-plot" false="" dontDontPlot} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}