version 1.0

task TomboPlotMotifCentered {
  input {
    Int? genome_fast_a
    Array[Int] fast_five_based_irs
    String? motif
    Array[Int] control_fast_five_based_irs
    Boolean? plot_standard_model
    String? plot_alternate_model
    Int? over_plot_threshold
    String? over_plot_type
    Int? num_regions
    Int? num_bases
    Boolean? deepest_coverage
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot motif_centered \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if (plot_standard_model) then "--plot-standard-model" else ""} \
      ~{if defined(plot_alternate_model) then ("--plot-alternate-model " +  '"' + plot_alternate_model + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(over_plot_type) then ("--overplot-type " +  '"' + over_plot_type + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if (deepest_coverage) then "--deepest-coverage" else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    genome_fast_a: "[--control-fast5-basedirs CONTROL_FAST5_BASEDIRS [CONTROL_FAST5_BASEDIRS ...]]\\n[--plot-standard-model]\\n[--plot-alternate-model {dam,CpG,5mC,dcm,6mA}]\\n[--overplot-threshold OVERPLOT_THRESHOLD]\\n[--overplot-type {Downsample,Boxplot,Quantile,Density}]\\n[--num-regions NUM_REGIONS]\\n[--num-bases NUM_BASES] [--deepest-coverage]\\n[--pdf-filename PDF_FILENAME]\\n[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    motif: "Motif of interest at which to plot signal and\\nstatsitics. Supports IUPAC single letter codes (use T\\nfor RNA)."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control\\nreads, containing only canonical nucleotides."
    plot_standard_model: "Add default standard model distribution to the plot."
    plot_alternate_model: "Add alternative model distribution to the plot."
    over_plot_threshold: "Coverage level to trigger alternative plot type\\ninstead of raw signal. Default: 50"
    over_plot_type: "Plot type for regions with higher coverage. Default:\\nDownsample"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot/output. Default: 21"
    deepest_coverage: "Plot the deepest coverage regions."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.motif_centered.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}