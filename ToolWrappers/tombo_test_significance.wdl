version 1.0

task TomboTestSignificance {
  input {
    Array[Int] fast_five_based_irs
    File? file_base_name
    Array[Int] control_fast_five_based_irs
    File? tombo_model_filename
    Array[String] alternate_model_filenames
    String? alternate_bases
    Int? fishers_method_context
    Int? minimum_test_reads
    Float? single_read_threshold
    Int? multiprocess_region_size
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String var_14
  }
  command <<<
    tombo test_significance \
      ~{var_14} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(file_base_name) then ("--statistics-file-basename " +  '"' + file_base_name + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(alternate_model_filenames) then ("--alternate-model-filenames " +  '"' + alternate_model_filenames + '"') else ""} \
      ~{if defined(alternate_bases) then ("--alternate-bases " +  '"' + alternate_bases + '"') else ""} \
      ~{if defined(fishers_method_context) then ("--fishers-method-context " +  '"' + fishers_method_context + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(single_read_threshold) then ("--single-read-threshold " +  '"' + single_read_threshold + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    file_base_name: "File base name to save base by base statistics from\\ntesting. Filenames will be [--statistics-file-basename\\n].[--alternate-bases]?.tombo.stats"
    control_fast_five_based_irs: "Control set of directories containing fast5 files.\\nThese reads should contain only standard nucleotides."
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    alternate_model_filenames: "Tombo models for alternative likelihood ratio\\nsignificance testing."
    alternate_bases: "[{5mC} ...]\\nDefault non-standard base model for testing."
    fishers_method_context: "Number of context bases up and downstream over which\\nto compute Fisher's method combined p-values. Note:\\nNot applicable for alternative model likelihood ratio\\ntests. Default: 1."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 5"
    single_read_threshold: "P-value or log likelihood ratio threshold when\\ncomputing fraction of significant reads at each\\ngenomic position. Default: pvalue:0.01; likelihood\\nratio:2"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic\\ncomputation. For very deep samples a smaller value is\\nrecommmended in order to control memory consumption.\\nDefault: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
    var_14: "[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS [CONTROL_FAST5_BASEDIRS ...]]"
  }
  output {
    File out_stdout = stdout()
  }
}