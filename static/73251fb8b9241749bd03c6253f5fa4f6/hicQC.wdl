version 1.0

task HicQC {
  input {
    Array[String]+ logLogFiles
    Array[String]+ labelsLabels
    String outputOutputFolder
    String dpiDpi
  }
  command <<<
    hicQC \
      ~{if defined(logLogFiles) then ("--logfiles " +  '"' + logLogFiles + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(outputOutputFolder) then ("--outputFolder " +  '"' + outputOutputFolder + '"') else ""} \
      ~{if defined(dpiDpi) then ("--dpi " +  '"' + dpiDpi + '"') else ""}
  >>>
}