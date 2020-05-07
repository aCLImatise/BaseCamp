version 1.0

task PhyluceAlignGetAlignsPartitionedByCluster {
  input {
    String alignmentsAlignments
    String clusterClusterCsv
    String outputOutput
    String inputInputFormat
    String outputOutputFormat
    String coresCores
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_get_aligns_partitioned_by_cluster \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(clusterClusterCsv) then ("--cluster-csv " +  '"' + clusterClusterCsv + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}