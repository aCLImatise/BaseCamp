version 1.0

task TomboDetectModificationsDeNovo {
  input {
    Array[Int] fast_five_based_irs
    File? statistics_file_basename
    Boolean? dna
    Boolean? rna
    Int? fishers_method_context
    Int? minimum_test_reads
    Array[String] single_read_threshold
    Int? coverage_dampen_counts
    String? per_read_statistics_basename
    Int? num_most_significant_stored
    Int? multiprocess_region_size
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo detect_modifications de_novo \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_file_basename) then ("--statistics-file-basename " +  '"' + statistics_file_basename + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(fishers_method_context) then ("--fishers-method-context " +  '"' + fishers_method_context + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(single_read_threshold) then ("--single-read-threshold " +  '"' + single_read_threshold + '"') else ""} \
      ~{if defined(coverage_dampen_counts) then ("--coverage-dampen-counts " +  '"' + coverage_dampen_counts + '"') else ""} \
      ~{if defined(per_read_statistics_basename) then ("--per-read-statistics-basename " +  '"' + per_read_statistics_basename + '"') else ""} \
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
    statistics_file_basename: "File base name to save base by base statistics from\\ntesting. Filenames will be [--statistics-file-\\nbasename].[--alternate-bases]?.tombo.stats"
    dna: "Explicitly select canonical DNA model. Default:\\nAutomatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default:\\nAutomatically determine from FAST5s"
    fishers_method_context: "Number of context bases up and downstream over which\\nto compute Fisher's method combined p-values. Note:\\nNot applicable for alternative model likelihood ratio\\ntests. Default: 1."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 1"
    single_read_threshold: "P-value threshold when computing fraction of\\nsignificant reads at each genomic position. If two\\nvalues are provided, statistics between these values\\nare not considered. Default thresholds: DNA:0.15-0.5 ,\\nRNA:0.05-0.4"
    coverage_dampen_counts: "COVERAGE_DAMPEN_COUNTS\\nDampen fraction modified estimates for low coverage\\nsites. Two parameters are unmodified and modified\\npseudo read counts. This is equivalent to a beta prior\\non the fraction estimate. Set to \\\"0 0\\\" to disable\\ndampened fraction estimation. Default: [2, 0]"
    per_read_statistics_basename: "Base for binary files containing per-read statistics\\nfrom statistical testing. Filenames will be [--per-\\nread-statistics-basename].[--alternate-\\nbases]?.tombo.per_read_stats"
    num_most_significant_stored: "Number of the most significant sites to store for\\nfaster access. If a longer list of most significant\\nsites is required the list must be re-computed from\\nall batches. Very large values can increase RAM usage.\\nDefault: 100000"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic\\ncomputation. For very deep samples a smaller value is\\nrecommmended in order to control memory consumption.\\nDefault: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}