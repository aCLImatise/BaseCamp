version 1.0

task NanorawPlotMultiCorrection {
  input {
    Array[String] fast_five_based_irs
    String? corrected_group
    Array[String] base_call_subgroups
    String? pdf_filename
    Array[String] genome_locations
    Boolean? include_original_base_calls
    String? num_reads_per_plot
    String? num_regions
    String? num_obs
    Boolean? quiet
  }
  command <<<
    nanoraw plot_multi_correction \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{true="--include-original-basecalls" false="" include_original_base_calls} \
      ~{if defined(num_reads_per_plot) then ("--num-reads-per-plot " +  '"' + num_reads_per_plot + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_obs) then ("--num-obs " +  '"' + num_obs + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_genome_multiread_correction.pdf"
    genome_locations: "Plot signal at specified genomic locations. Format locations as \"chrm:position[:strand] [chrm2:position2[:strand2] ...]\" (strand not applicable for all applications)"
    include_original_base_calls: "Iclude original basecalls in plots."
    num_reads_per_plot: "Number of reads to plot per genomic region. Default: 5"
    num_regions: "Number of regions to plot. Default: 10"
    num_obs: "Number of observations to plot in each region. Default: 500"
    quiet: "Don't print status information."
  }
}