version 1.0

task TomboModelResquiggle {
  input {
    Array[Int] fast_five_based_irs
    Int? stouffer_z_context
    Int? region_context
    Float? p_value_threshold
    File? tombo_model_filename
    Int? max_bases_shift
    Int? min_obs_per_base
    Int? base_score_iterations
    Int? base_score_region_context
    Int? base_score_max_bases_shift
    Int? corrected_group
    Int? new_corrected_group
    Array[String] base_call_subgroups
    Boolean? overwrite
    File? failed_reads_filename
    Boolean? include_event_stdev
    Int? processes
    Boolean? quiet
  }
  command <<<
    tombo model_resquiggle \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(stouffer_z_context) then ("--stouffer-z-context " +  '"' + stouffer_z_context + '"') else ""} \
      ~{if defined(region_context) then ("--region-context " +  '"' + region_context + '"') else ""} \
      ~{if defined(p_value_threshold) then ("--p-value-threshold " +  '"' + p_value_threshold + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(max_bases_shift) then ("--max-bases-shift " +  '"' + max_bases_shift + '"') else ""} \
      ~{if defined(min_obs_per_base) then ("--min-obs-per-base " +  '"' + min_obs_per_base + '"') else ""} \
      ~{if defined(base_score_iterations) then ("--base-score-iterations " +  '"' + base_score_iterations + '"') else ""} \
      ~{if defined(base_score_region_context) then ("--base-score-region-context " +  '"' + base_score_region_context + '"') else ""} \
      ~{if defined(base_score_max_bases_shift) then ("--base-score-max-bases-shift " +  '"' + base_score_max_bases_shift + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(new_corrected_group) then ("--new-corrected-group " +  '"' + new_corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(failed_reads_filename) then ("--failed-reads-filename " +  '"' + failed_reads_filename + '"') else ""} \
      ~{if (include_event_stdev) then "--include-event-stdev" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    stouffer_z_context: "Number of context bases up and downstream over which\\nto compute Stouffer's Z combined z-scores. Default: 1."
    region_context: "Number of context bases up and downstream of poorly\\nfit regions to perform model re-squiggle. Default: 1."
    p_value_threshold: "P-value threshold to identify regions to apply model\\nre-squiggle algorithm. Default: 0.100000"
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    max_bases_shift: "Maximum bases to shift raw signal from\\nevent_resquiggle assignment. Default: 3"
    min_obs_per_base: "Minimum raw observations to assign to a genomic base.\\nDefault: 3"
    base_score_iterations: "Number of iterations through each read to perform\\n(computationally expensive) base space model re-\\nsquiggle algorithm. Default: 2."
    base_score_region_context: "Number of context bases up and downstream of poorly\\nfit regions to perform iterative base-score model re-\\nsquiggle. Default: 4."
    base_score_max_bases_shift: "Maximum bases to shift raw signal from first round of\\nmodel re-squiggle. Default: 4"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    new_corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawModelCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    overwrite: "Overwrite previous corrected group in FAST5 files.\\nNote: only effects --corrected-group or --new-\\ncorrected-group."
    failed_reads_filename: "Output failed read filenames with assoicated error.\\nDefault: Do not store failed reads."
    include_event_stdev: "Include corrected event standard deviation in output\\nFAST5 data."
    processes: "Number of processes. Default: 1"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}