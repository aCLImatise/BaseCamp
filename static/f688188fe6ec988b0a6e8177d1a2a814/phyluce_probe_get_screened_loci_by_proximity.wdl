version 1.0

task PhyluceProbeGetScreenedLociByProximity {
  input {
    String inputInput
    String outputOutput
    String distanceDistance
    Int lengthLength
  }
  command <<<
    phyluce_probe_get_screened_loci_by_proximity \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""}
  >>>
}