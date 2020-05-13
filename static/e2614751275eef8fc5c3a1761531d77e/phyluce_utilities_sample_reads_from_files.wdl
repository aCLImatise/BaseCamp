version 1.0

task PhyluceUtilitiesSampleReadsFromFiles {
  input {
    String confConf
    String outputOutput
  }
  command <<<
    phyluce_utilities_sample_reads_from_files \
      ~{if defined(confConf) then ("--conf " +  '"' + confConf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}