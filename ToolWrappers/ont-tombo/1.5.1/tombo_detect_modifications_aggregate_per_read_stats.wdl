version 1.0

task TomboDetectModificationsAggregatePerReadStats {
  input {
    File? file_saveload_base
    Array[String] pvalue_log_threshold
    Int? minimum_test_reads
    Int? coverage_dampen_counts
    Int? num_most_significant_stored
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String per_read_statistics_filename
    String _singlereadthreshold
    String var_11
  }
  command <<<
    tombo detect_modifications aggregate_per_read_stats \
      ~{per_read_statistics_filename} \
      ~{_singlereadthreshold} \
      ~{var_11} \
      ~{if defined(file_saveload_base) then ("--statistics-filename " +  '"' + file_saveload_base + '"') else ""} \
      ~{if defined(pvalue_log_threshold) then ("--single-read-threshold " +  '"' + pvalue_log_threshold + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(coverage_dampen_counts) then ("--coverage-dampen-counts " +  '"' + coverage_dampen_counts + '"') else ""} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    file_saveload_base: "File to save/load genomic base anchored statistics."
    pvalue_log_threshold: "P-value or log likelihood ratio threshold when\\ncomputing fraction of significant reads at each\\ngenomic position. If two values are provided,\\nstatistics between these values are not considered."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 1"
    coverage_dampen_counts: "COVERAGE_DAMPEN_COUNTS\\nDampen fraction modified estimates for low coverage\\nsites. Two parameters are unmodified and modified\\npseudo read counts. This is equivalent to a beta prior\\non the fraction estimate. Set to \\\"0 0\\\" to disable\\ndampened fraction estimation. Default: [2, 0]"
    num_most_significant_stored: "Number of the most significant sites to store for\\nfaster access. If a longer list of most significant\\nsites is required the list must be re-computed from\\nall batches. Very large values can increase RAM usage.\\nDefault: 100000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    per_read_statistics_filename: "--statistics-filename"
    _singlereadthreshold: "--single-read-threshold"
    var_11: "[SINGLE_READ_THRESHOLD ...]"
  }
  output {
    File out_stdout = stdout()
  }
}