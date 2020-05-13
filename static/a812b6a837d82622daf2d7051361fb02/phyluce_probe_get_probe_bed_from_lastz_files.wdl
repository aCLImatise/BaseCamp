version 1.0

task PhyluceProbeGetProbeBedFromLastzFiles {
  input {
    String inputInput
    String outputOutput
  }
  command <<<
    phyluce_probe_get_probe_bed_from_lastz_files \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}