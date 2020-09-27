version 1.0

task TomboPlotClusterMostSignificant {
  input {
    Boolean? control_fast_five_based_irs
    Array[Int] fast_five_based_irs
    File? statistics_filename
    File? genome_fast_a
    Int? processes
    Int? num_regions
    Int? num_bases
    Int? slide_span
    File? pdf_filename
    File? r_data_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot cluster_most_significant \
      ~{if (control_fast_five_based_irs) then "--control-fast5-basedirs" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(slide_span) then ("--slide-span " +  '"' + slide_span + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    control_fast_five_based_irs: "CONTROL_FAST5_BASEDIRS\\n[CONTROL_FAST5_BASEDIRS ...]\\n--statistics-filename\\nSTATISTICS_FILENAME\\n[--genome-fasta GENOME_FASTA]\\n[--processes PROCESSES]\\n[--num-regions NUM_REGIONS]\\n[--num-bases NUM_BASES]\\n[--slide-span SLIDE_SPAN]\\n[--pdf-filename PDF_FILENAME]\\n[--r-data-filename R_DATA_FILENAME]\\n[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    statistics_filename: "File to save/load genomic base anchored statistics."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    processes: "Number of processes. Default: 1"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot/output. Default: 21"
    slide_span: "Number of bases offset over which to search when\\ncomputing distances for signal cluster plotting.\\nDefault: 0 (exact position)"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.signal_clusters.pdf"
    r_data_filename: "Filename to save R data structure. Default: Don't save"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}