version 1.0

task GetExonsPositions.py {
  input {
    String organismOrganism
    String outputOutput
    String thresholdThresholdLength
    String serverServer
  }
  command <<<
    get_exons_positions.py \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(thresholdThresholdLength) then ("--threshold_length " +  '"' + thresholdThresholdLength + '"') else ""} \
      ~{if defined(serverServer) then ("--server " +  '"' + serverServer + '"') else ""}
  >>>
}