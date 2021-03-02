version 1.0

task TomboPlotMaxCoverage {
  input {
    Array[Int] fast_five_based_irs
    Array[Int] control_fast_five_based_irs
    File? tombo_model_filename
    File? alternate_model_filename
    Boolean? plot_standard_model
    String? plot_alternate_model
    Int? over_plot_threshold
    String? over_plot_type
    Int? num_regions
    Int? num_bases
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot_max_coverage \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(alternate_model_filename) then ("--alternate-model-filename " +  '"' + alternate_model_filename + '"') else ""} \
      ~{if (plot_standard_model) then "--plot-standard-model" else ""} \
      ~{if defined(plot_alternate_model) then ("--plot-alternate-model " +  '"' + plot_alternate_model + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Control set of directories containing fast5 files.\\nThese reads should contain only standard nucleotides."
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    alternate_model_filename: "Tombo model for alternative likelihood ratio\\nsignificance testing."
    plot_standard_model: "Add default standard model distribution to the plot."
    plot_alternate_model: "Add alternative model distribution to the plot."
    over_plot_threshold: "Coverage level to trigger alternative plot type\\ninstead of raw signal. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Default:\\nDownsample"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot/output. Default: 21"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.max_coverage.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}