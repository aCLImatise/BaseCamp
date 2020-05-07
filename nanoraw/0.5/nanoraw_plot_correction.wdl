version 1.0

task NanorawPlotCorrection {
  input {
    Array[String]+ fast5Fast5BasedIrs
    String regionRegionType
    String correctedCorrectedGroup
    String baseBaseCallSubgroup
    String pdfPdfFilename
    String numNumReads
    String numNumObs
    Boolean quietQuiet
  }
  command <<<
    nanoraw plot_correction \
      ~{if defined(fast5Fast5BasedIrs) then ("--fast5-basedirs " +  '"' + fast5Fast5BasedIrs + '"') else ""} \
      ~{if defined(regionRegionType) then ("--region-type " +  '"' + regionRegionType + '"') else ""} \
      ~{if defined(correctedCorrectedGroup) then ("--corrected-group " +  '"' + correctedCorrectedGroup + '"') else ""} \
      ~{if defined(baseBaseCallSubgroup) then ("--basecall-subgroup " +  '"' + baseBaseCallSubgroup + '"') else ""} \
      ~{if defined(pdfPdfFilename) then ("--pdf-filename " +  '"' + pdfPdfFilename + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(numNumObs) then ("--num-obs " +  '"' + numNumObs + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}