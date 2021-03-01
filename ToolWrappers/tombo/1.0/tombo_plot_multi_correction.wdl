version 1.0

task TomboPlotMultiCorrection {
  input {
    Array[Int] fast_five_based_irs
    Array[String] genome_locations
    Int? num_regions
    Int? num_reads
    Int? num_obs
    File? pdf_filename
    Boolean? include_original_base_calls
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot_multi_correction \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(num_obs) then ("--num-obs " +  '"' + num_obs + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if (include_original_base_calls) then "--include-original-basecalls" else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    genome_locations: "Genomic locations at which to plot signal. Format\\nlocations as \\\"chrm:position[:strand]\\n[chrm2:position2[:strand2] ...]\\\" (strand not\\napplicable for all applications)"
    num_regions: "Number of regions to plot. Default: 10"
    num_reads: "Number of reads to plot. Default: 5"
    num_obs: "Number of observations to plot. Default: 500"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.multi_corrected.pdf"
    include_original_base_calls: "Include original basecalls in plots."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}