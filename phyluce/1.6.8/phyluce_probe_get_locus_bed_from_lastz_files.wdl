version 1.0

task PhyluceProbeGetLocusBedFromLastzFiles {
  input {
    String inputInput
    String outputOutput
    String regexRegex
  }
  command <<<
    phyluce_probe_get_locus_bed_from_lastz_files \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regexRegex) then ("--regex " +  '"' + regexRegex + '"') else ""}
  >>>
}