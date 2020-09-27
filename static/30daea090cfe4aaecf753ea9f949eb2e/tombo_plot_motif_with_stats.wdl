version 1.0

task TomboPlotMotifWithStats {
  input {
    File? statistics_filename
    Array[Int] fast_five_based_irs
    String? motif
    Array[Int] control_fast_five_based_irs
    File? tombo_model_filename
    Int? over_plot_threshold
    Int? num_regions
    Int? num_context
    Int? num_statistics
    Boolean? statistic_order
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot_motif_with_stats \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_context) then ("--num-context " +  '"' + num_context + '"') else ""} \
      ~{if defined(num_statistics) then ("--num-statistics " +  '"' + num_statistics + '"') else ""} \
      ~{if (statistic_order) then "--statistic-order" else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    statistics_filename: "[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS [CONTROL_FAST5_BASEDIRS ...]]\\n[--tombo-model-filename TOMBO_MODEL_FILENAME]\\n[--overplot-threshold OVERPLOT_THRESHOLD]\\n[--num-regions NUM_REGIONS]\\n[--num-context NUM_CONTEXT]\\n[--num-statistics NUM_STATISTICS]\\n[--statistic-order]\\n[--pdf-filename PDF_FILENAME]\\n[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    motif: "Motif of interest at which to plot signal and\\nstatsitics. Supports IUPAC single letter codes (use T\\nfor RNA)."
    control_fast_five_based_irs: "Control set of directories containing fast5 files.\\nThese reads should contain only standard nucleotides."
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    over_plot_threshold: "Coverage level to trigger alternative plot type\\ninstead of raw signal. Default: 50"
    num_regions: "Number of regions to plot. Default: 3"
    num_context: "Number of context bases around motif. Default: 2"
    num_statistics: "Number of motif centered regions to include in\\nstatistic distributions. Default: 200"
    statistic_order: "Order selected locations by p-values or mean\\nlikelihood ratio. Default: fraction of significant\\nreads."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.motif_statistics.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}