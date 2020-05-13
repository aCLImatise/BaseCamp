version 1.0

task Connor {
  input {
    Boolean verboseVerbose
    Boolean forceForce
    String logLogFile
    String annotatedAnnotatedOutputBam
    String consensusConsensusFreqThreshold
    Int minMinFamilySizeThreshold
    String umtUmtDistanceThreshold
    String filterFilterOrder
    String umtUmtLength
    String? inputInputBam
    String? outputOutputBam
  }
  command <<<
    connor \
      ~{inputInputBam} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(logLogFile) then ("--log_file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(annotatedAnnotatedOutputBam) then ("--annotated_output_bam " +  '"' + annotatedAnnotatedOutputBam + '"') else ""} \
      ~{if defined(consensusConsensusFreqThreshold) then ("--consensus_freq_threshold " +  '"' + consensusConsensusFreqThreshold + '"') else ""} \
      ~{if defined(minMinFamilySizeThreshold) then ("--min_family_size_threshold " +  '"' + minMinFamilySizeThreshold + '"') else ""} \
      ~{if defined(umtUmtDistanceThreshold) then ("--umt_distance_threshold " +  '"' + umtUmtDistanceThreshold + '"') else ""} \
      ~{if defined(filterFilterOrder) then ("--filter_order " +  '"' + filterFilterOrder + '"') else ""} \
      ~{if defined(umtUmtLength) then ("--umt_length " +  '"' + umtUmtLength + '"') else ""} \
      ~{outputOutputBam}
  >>>
}