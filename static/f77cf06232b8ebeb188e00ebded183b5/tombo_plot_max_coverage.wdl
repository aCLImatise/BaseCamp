version 1.0

task TomboPlotMaxCoverage {
  input {
    Array[String] fast_five_based_irs
    Array[String] control_fast_five_based_irs
    Boolean? plot_standard_model
    String? plot_alternate_model
    String? over_plot_threshold
    String? over_plot_type
    String? num_regions
    String? num_bases
    String? pdf_filename
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot max_coverage \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{true="--plot-standard-model" false="" plot_standard_model} \
      ~{if defined(plot_alternate_model) then ("--plot-alternate-model " +  '"' + plot_alternate_model + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control reads, containing only canonical nucleotides."
    plot_standard_model: "Add default standard model distribution to the plot."
    plot_alternate_model: "Add alternative model distribution to the plot."
    over_plot_threshold: "Coverage level to trigger alternative plot type instead of raw signal. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Default: Downsample"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot/output. Default: 21"
    pdf_filename: "PDF filename to store plot(s). Default: tombo_results.max_coverage.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}