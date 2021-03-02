version 1.0

task TomboDetectModificationsLevelSampleCompare {
  input {
    Array[Int] fast_five_based_irs
    File? file_base_name
    Array[Int] alternate_fast_five_based_irs
    Int? fishers_method_context
    Int? minimum_test_reads
    String? statistic_type
    Boolean? store_p_value
    Int? num_most_significant_stored
    Int? multiprocess_region_size
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String _alternatefastbasedirs
  }
  command <<<
    tombo detect_modifications level_sample_compare \
      ~{_alternatefastbasedirs} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(file_base_name) then ("--statistics-file-basename " +  '"' + file_base_name + '"') else ""} \
      ~{if defined(alternate_fast_five_based_irs) then ("--alternate-fast5-basedirs " +  '"' + alternate_fast_five_based_irs + '"') else ""} \
      ~{if defined(fishers_method_context) then ("--fishers-method-context " +  '"' + fishers_method_context + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(statistic_type) then ("--statistic-type " +  '"' + statistic_type + '"') else ""} \
      ~{if (store_p_value) then "--store-p-value" else ""} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    file_base_name: "File base name to save base by base statistics from\\ntesting. Filenames will be [--statistics-file-\\nbasename].[--alternate-bases]?.tombo.stats"
    alternate_fast_five_based_irs: "Set of directories containing fast5 files for\\nalternate set of reads."
    fishers_method_context: "Number of context bases up and downstream over which\\nto compute Fisher's method combined p-values. Note:\\nNot applicable for alternative model likelihood ratio\\ntests. Default: 1."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 50"
    statistic_type: "Type of statistical test to apply. Default: \\\"ks\\\""
    store_p_value: "Store p-value instead of effect-size statistic.\\nStatistics are D-statistic (KS-test), deviation from\\neven common language effect size (u-test), and Cohen's\\nD (t-test)."
    num_most_significant_stored: "Number of the most significant sites to store for\\nfaster access. If a longer list of most significant\\nsites is required the list must be re-computed from\\nall batches. Very large values can increase RAM usage.\\nDefault: 100000"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic\\ncomputation. For very deep samples a smaller value is\\nrecommmended in order to control memory consumption.\\nDefault: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    _alternatefastbasedirs: "--alternate-fast5-basedirs"
  }
  output {
    File out_stdout = stdout()
  }
}