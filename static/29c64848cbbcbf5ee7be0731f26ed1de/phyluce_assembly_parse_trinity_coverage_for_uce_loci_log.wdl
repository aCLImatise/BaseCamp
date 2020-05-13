version 1.0

task PhyluceAssemblyParseTrinityCoverageForUceLociLog {
  input {
    String logLog
    String outputOutput
  }
  command <<<
    phyluce_assembly_parse_trinity_coverage_for_uce_loci_log \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}