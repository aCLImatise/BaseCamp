version 1.0

task GarnettCheckMarkers.R {
  input {
    String databaseDatabase
    String cdsCdsGeneIdType
    String markerMarkerFileGeneIdType
    String markerMarkerOutputPath
    String plotPlotOutputPath
    Boolean propogatePropogateMarkers
    Boolean useUseTfIdf
    String classifierClassifierGeneIdType
    String ambAmbMarkerCutOff
    String labelLabelSize
  }
  command <<<
    garnett_check_markers.R \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(cdsCdsGeneIdType) then ("--cds-gene-id-type " +  '"' + cdsCdsGeneIdType + '"') else ""} \
      ~{if defined(markerMarkerFileGeneIdType) then ("--marker-file-gene-id-type " +  '"' + markerMarkerFileGeneIdType + '"') else ""} \
      ~{if defined(markerMarkerOutputPath) then ("--marker-output-path " +  '"' + markerMarkerOutputPath + '"') else ""} \
      ~{if defined(plotPlotOutputPath) then ("--plot-output-path " +  '"' + plotPlotOutputPath + '"') else ""} \
      ~{true="--propogate-markers" false="" propogatePropogateMarkers} \
      ~{true="--use-tf-idf" false="" useUseTfIdf} \
      ~{if defined(classifierClassifierGeneIdType) then ("--classifier-gene-id-type " +  '"' + classifierClassifierGeneIdType + '"') else ""} \
      ~{if defined(ambAmbMarkerCutOff) then ("--amb-marker-cutoff " +  '"' + ambAmbMarkerCutOff + '"') else ""} \
      ~{if defined(labelLabelSize) then ("--label-size " +  '"' + labelLabelSize + '"') else ""}
  >>>
}