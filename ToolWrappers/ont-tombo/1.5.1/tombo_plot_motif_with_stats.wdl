version 1.0

task TomboPlotMotifWithStats {
  input {
    Array[Int] fast_five_based_irs
    String? motif
    File? statistics_filename
    File? genome_fast_a
    Array[Int] control_fast_five_based_irs
    Boolean? plot_standard_model
    String? plot_alternate_model
    Int? over_plot_threshold
    Int? num_regions
    Int? num_context
    Int? num_statistics
    Int? coverage_dampen_counts
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot motif_with_stats \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if (plot_standard_model) then "--plot-standard-model" else ""} \
      ~{if defined(plot_alternate_model) then ("--plot-alternate-model " +  '"' + plot_alternate_model + '"') else ""} \
      ~{if defined(over_plot_threshold) then ("--overplot-threshold " +  '"' + over_plot_threshold + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_context) then ("--num-context " +  '"' + num_context + '"') else ""} \
      ~{if defined(num_statistics) then ("--num-statistics " +  '"' + num_statistics + '"') else ""} \
      ~{if defined(coverage_dampen_counts) then ("--coverage-dampen-counts " +  '"' + coverage_dampen_counts + '"') else ""} \
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
    motif: "Motif of interest at which to plot signal and\\nstatsitics. Supports IUPAC single letter codes (use T\\nfor RNA)."
    statistics_filename: "File to save/load genomic base anchored statistics."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control\\nreads, containing only canonical nucleotides."
    plot_standard_model: "Add default standard model distribution to the plot."
    plot_alternate_model: "Add alternative model distribution to the plot."
    over_plot_threshold: "Coverage level to trigger alternative plot type\\ninstead of raw signal. Default: 50"
    num_regions: "Number of regions to plot. Default: 3"
    num_context: "Number of context bases around motif. Default: 5"
    num_statistics: "Number of motif centered regions to include in\\nstatistic distributions. Default: 200"
    coverage_dampen_counts: "COVERAGE_DAMPEN_COUNTS\\nDampen fraction modified estimates for low coverage\\nsites. Two parameters are unmodified and modified\\npseudo read counts. This is equivalent to a beta prior\\non the fraction estimate. Set to \\\"0 0\\\" to disable\\ndampened fraction estimation. Default: [2, 0]"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.motif_statistics.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}