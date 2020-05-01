version 1.0

task Fast5ToSeqSummary {
  input {
    String fast5Fast5Dir
    String seqSeqSummaryFn
    Int maxMaxFast5
    String threadsThreads
    String baseBaseCallId
    Array[String]+ fieldsFields
    Boolean includeIncludePath
    String verboseVerboseLevel
  }
  command <<<
    Fast5_to_seq_summary \
      ~{if defined(fast5Fast5Dir) then ("--fast5_dir " +  '"' + fast5Fast5Dir + '"') else ""} \
      ~{if defined(seqSeqSummaryFn) then ("--seq_summary_fn " +  '"' + seqSeqSummaryFn + '"') else ""} \
      ~{if defined(maxMaxFast5) then ("--max_fast5 " +  '"' + maxMaxFast5 + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(baseBaseCallId) then ("--basecall_id " +  '"' + baseBaseCallId + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="--include_path" false="" includeIncludePath} \
      ~{if defined(verboseVerboseLevel) then ("--verbose_level " +  '"' + verboseVerboseLevel + '"') else ""}
  >>>
}