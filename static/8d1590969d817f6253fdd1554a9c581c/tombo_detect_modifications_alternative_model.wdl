version 1.0

task TomboDetectModificationsAlternativeModel {
  input {
    Array[Int] fast_five_based_irs
    File? statistics_file_basename
    String? alternate_bases
    Boolean? print_available_models
    Boolean? dna
    Boolean? rna
    Int? minimum_test_reads
    Array[String] single_read_threshold
    Boolean? standard_log_likelihood_ratio
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
    tombo detect_modifications alternative_model \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_file_basename) then ("--statistics-file-basename " +  '"' + statistics_file_basename + '"') else ""} \
      ~{if defined(alternate_bases) then ("--alternate-bases " +  '"' + alternate_bases + '"') else ""} \
      ~{if (print_available_models) then "--print-available-models" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(single_read_threshold) then ("--single-read-threshold " +  '"' + single_read_threshold + '"') else ""} \
      ~{if (standard_log_likelihood_ratio) then "--standard-log-likelihood-ratio" else ""} \
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
    alternate_bases: "[{dcm,5mC,6mA,dam,CpG} ...]\\nDefault non-standard base model for testing (not\\nrequired if user created --alternate-model-filenames\\nis provided)."
    print_available_models: "Print available alternative models and exit."
    dna: "Explicitly select canonical DNA model. Default:\\nAutomatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default:\\nAutomatically determine from FAST5s"
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 1"
    single_read_threshold: "Log likelihood ratio threshold when computing fraction\\nof significant reads at each genomic position. If two\\nvalues are provided, statistics between these values\\nare not considered. Default thresholds: DNA:-1.5-2.5 ,\\nRNA:-2.5-2.5"
    standard_log_likelihood_ratio: "Use a standard log likelihood ratio (LLR) statistic.\\nDefault is to use an outlier-robust LLR-like\\nstatistic. Detail in full online documentation."
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