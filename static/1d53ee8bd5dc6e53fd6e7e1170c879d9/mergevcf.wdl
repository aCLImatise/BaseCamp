version 1.0

task Mergevcf {
  input {
    String outputOutput
    Boolean verboseVerbose
    String labelsLabels
    Boolean nNCallers
    Int minMinCallers
    Boolean svSv
    Boolean filteredFiltered
    String svSvWindow
    String? inputInputFiles
  }
  command <<<
    mergevcf \
      ~{inputInputFiles} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{true="--ncallers" false="" nNCallers} \
      ~{if defined(minMinCallers) then ("--mincallers " +  '"' + minMinCallers + '"') else ""} \
      ~{true="--sv" false="" svSv} \
      ~{true="--filtered" false="" filteredFiltered} \
      ~{if defined(svSvWindow) then ("--svwindow " +  '"' + svSvWindow + '"') else ""}
  >>>
}