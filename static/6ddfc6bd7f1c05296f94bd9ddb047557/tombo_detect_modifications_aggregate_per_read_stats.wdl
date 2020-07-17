version 1.0

task TomboDetectModificationsAggregatePerReadStats {
  input {
    String? per_read_statistics_filename
    String? statistics_filename
    Array[String] single_read_threshold
    String? num_most_significant_stored
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo detect_modifications aggregate_per_read_stats \
      ~{if defined(per_read_statistics_filename) then ("--per-read-statistics-filename " +  '"' + per_read_statistics_filename + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(single_read_threshold) then ("--single-read-threshold " +  '"' + single_read_threshold + '"') else ""} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    per_read_statistics_filename: "Binary file containing per-read statistics from statistical testing."
    statistics_filename: "File to save/load genomic base anchored statistics."
    single_read_threshold: "P-value or log likelihood ratio threshold when computing fraction of significant reads at each genomic position. If two values are provided, statistics between these values are not considered."
    num_most_significant_stored: "Number of the most significant sites to store for faster access. If a longer list of most significant sites is required the list must be re-computed from all batches. Very large values can increase RAM usage. Default: 100000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}