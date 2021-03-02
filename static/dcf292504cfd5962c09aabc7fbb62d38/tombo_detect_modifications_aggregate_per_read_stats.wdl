version 1.0

task TomboDetectModificationsAggregatePerReadStats {
  input {
    File? binary_file_containing
    File? file_saveload_base
    Array[String] single_read_threshold
    Int? minimum_test_reads
    Int? coverage_dampen_counts
    Int? num_most_significant_stored
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String _statisticsfilename
    String _singlereadthreshold
  }
  command <<<
    tombo detect_modifications aggregate_per_read_stats \
      ~{_statisticsfilename} \
      ~{_singlereadthreshold} \
      ~{if defined(binary_file_containing) then ("--per-read-statistics-filename " +  '"' + binary_file_containing + '"') else ""} \
      ~{if defined(file_saveload_base) then ("--statistics-filename " +  '"' + file_saveload_base + '"') else ""} \
      ~{if defined(single_read_threshold) then ("--single-read-threshold " +  '"' + single_read_threshold + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(coverage_dampen_counts) then ("--coverage-dampen-counts " +  '"' + coverage_dampen_counts + '"') else ""} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binary_file_containing: "Binary file containing per-read statistics from\\nstatistical testing."
    file_saveload_base: "File to save/load genomic base anchored statistics."
    single_read_threshold: "P-value or log likelihood ratio threshold when\\ncomputing fraction of significant reads at each\\ngenomic position. If two values are provided,\\nstatistics between these values are not considered."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 1"
    coverage_dampen_counts: "COVERAGE_DAMPEN_COUNTS\\nDampen fraction modified estimates for low coverage\\nsites. Two parameters are unmodified and modified\\npseudo read counts. This is equivalent to a beta prior\\non the fraction estimate. Set to \\\"0 0\\\" to disable\\ndampened fraction estimation. Default: [2, 0]"
    num_most_significant_stored: "Number of the most significant sites to store for\\nfaster access. If a longer list of most significant\\nsites is required the list must be re-computed from\\nall batches. Very large values can increase RAM usage.\\nDefault: 100000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    _statisticsfilename: "--statistics-filename"
    _singlereadthreshold: "--single-read-threshold"
  }
  output {
    File out_stdout = stdout()
  }
}