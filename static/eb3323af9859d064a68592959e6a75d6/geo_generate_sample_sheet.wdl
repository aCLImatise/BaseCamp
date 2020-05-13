version 1.0

task GeoGenerateSampleSheet.py {
  input {
    File seriesSeriesMatrixFile
    File outputOutputFile
    File logLogFile
    Boolean quietQuiet
    Boolean verboseVerbose
  }
  command <<<
    geo_generate_sample_sheet.py \
      ~{if defined(seriesSeriesMatrixFile) then ("--series-matrix-file " +  '"' + seriesSeriesMatrixFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}