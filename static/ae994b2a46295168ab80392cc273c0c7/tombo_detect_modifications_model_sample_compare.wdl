version 1.0

task TomboDetectModificationsModelSampleCompare {
  input {
    Boolean? var_0
    Array[Int] directories_containing_files
    Array[Int] set_directories_containing
    Boolean? sample_only_estimates
    Int? model_prior_weights
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
    Int var_18
    String _controlfastbasedirs
    Int var_20
  }
  command <<<
    tombo detect_modifications model_sample_compare \
      ~{var_18} \
      ~{_controlfastbasedirs} \
      ~{var_20} \
      ~{if (var_0) then "--statistics-file-basename" else ""} \
      ~{if defined(directories_containing_files) then ("--fast5-basedirs " +  '"' + directories_containing_files + '"') else ""} \
      ~{if defined(set_directories_containing) then ("--control-fast5-basedirs " +  '"' + set_directories_containing + '"') else ""} \
      ~{if (sample_only_estimates) then "--sample-only-estimates" else ""} \
      ~{if defined(model_prior_weights) then ("--model-prior-weights " +  '"' + model_prior_weights + '"') else ""} \
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
  parameter_meta {
    var_0: ""
    directories_containing_files: "Directories containing fast5 files."
    set_directories_containing: "Set of directories containing fast5 files for control\\nreads, containing only canonical nucleotides."
    sample_only_estimates: "Only use canonical sample to estimate expected signal\\nlevel and spread. Default: Use canonical model to\\nimprove estimtates (esp. for low coverage regions)\\nusing baysian posterior estimates."
    model_prior_weights: "MODEL_PRIOR_WEIGHTS\\nPrior weights (one each for mean and spread) applied\\nto canonical base model for estimating posterior model\\nparameters for sample comparison. Default: [5, 40]"
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
    var_18: "[FAST5_BASEDIRS ...]"
    _controlfastbasedirs: "--control-fast5-basedirs"
    var_20: "[CONTROL_FAST5_BASEDIRS ...]"
  }
  output {
    File out_stdout = stdout()
  }
}