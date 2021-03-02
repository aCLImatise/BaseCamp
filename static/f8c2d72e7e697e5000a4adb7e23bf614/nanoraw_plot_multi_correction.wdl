version 1.0

task NanorawPlotMultiCorrection {
  input {
    Array[Int] fast_five_based_irs
    Int? corrected_group
    Array[String] base_call_subgroups
    File? pdf_filename
    Array[String] genome_locations
    Boolean? include_original_base_calls
    Int? num_reads_per_plot
    Int? num_regions
    Int? num_obs
    Boolean? quiet
  }
  command <<<
    nanoraw plot_multi_correction \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{if (include_original_base_calls) then "--include-original-basecalls" else ""} \
      ~{if defined(num_reads_per_plot) then ("--num-reads-per-plot " +  '"' + num_reads_per_plot + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_obs) then ("--num-obs " +  '"' + num_obs + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_genome_multiread_correction.pdf"
    genome_locations: "Plot signal at specified genomic locations. Format\\nlocations as \\\"chrm:position[:strand]\\n[chrm2:position2[:strand2] ...]\\\" (strand not\\napplicable for all applications)"
    include_original_base_calls: "Iclude original basecalls in plots."
    num_reads_per_plot: "Number of reads to plot per genomic region. Default: 5"
    num_regions: "Number of regions to plot. Default: 10"
    num_obs: "Number of observations to plot in each region.\\nDefault: 500"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}