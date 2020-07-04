version 1.0

task TomboDetectModificationsLevelSampleCompare {
  input {
    Array[String] fast_five_based_irs
    String? statistics_file_basename
    Array[String] alternate_fast_five_based_irs
    String? fishers_method_context
    Int? minimum_test_reads
    String? statistic_type
    Boolean? store_p_value
    String? num_most_significant_stored
    String? multiprocess_region_size
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo detect_modifications level_sample_compare \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_file_basename) then ("--statistics-file-basename " +  '"' + statistics_file_basename + '"') else ""} \
      ~{if defined(alternate_fast_five_based_irs) then ("--alternate-fast5-basedirs " +  '"' + alternate_fast_five_based_irs + '"') else ""} \
      ~{if defined(fishers_method_context) then ("--fishers-method-context " +  '"' + fishers_method_context + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(statistic_type) then ("--statistic-type " +  '"' + statistic_type + '"') else ""} \
      ~{true="--store-p-value" false="" store_p_value} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    statistics_file_basename: "File base name to save base by base statistics from testing. Filenames will be [--statistics-file- basename].[--alternate-bases]?.tombo.stats"
    alternate_fast_five_based_irs: "Set of directories containing fast5 files for alternate set of reads."
    fishers_method_context: "Number of context bases up and downstream over which to compute Fisher's method combined p-values. Note: Not applicable for alternative model likelihood ratio tests. Default: 1."
    minimum_test_reads: "Number of reads required at a position to perform significance testing or contribute to model estimation. Default: 50"
    statistic_type: "Type of statistical test to apply. Default: \"ks\""
    store_p_value: "Store p-value instead of effect-size statistic. Statistics are D-statistic (KS-test), deviation from even common language effect size (u-test), and Cohen's D (t-test)."
    num_most_significant_stored: "Number of the most significant sites to store for faster access. If a longer list of most significant sites is required the list must be re-computed from all batches. Very large values can increase RAM usage. Default: 100000"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic computation. For very deep samples a smaller value is recommmended in order to control memory consumption. Default: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}