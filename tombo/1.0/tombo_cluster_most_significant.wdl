version 1.0

task TomboClusterMostSignificant {
  input {
    Boolean? var_0
    Boolean? var_1
    Array[Int] fast_five_based_irs
    File? genome_fast_a
    Int? processes
    Int? num_regions
    Int? num_bases
    Int? q_value_threshold
    Int? slide_span
    File? pdf_filename
    File? r_data_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    Int var_14
    String var_15
  }
  command <<<
    tombo cluster_most_significant \
      ~{var_14} \
      ~{var_15} \
      ~{if (var_0) then "--control-fast5-basedirs" else ""} \
      ~{if (var_1) then "--statistics-filename" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(q_value_threshold) then ("--q-value-threshold " +  '"' + q_value_threshold + '"') else ""} \
      ~{if defined(slide_span) then ("--slide-span " +  '"' + slide_span + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    var_0: ""
    var_1: ""
    fast_five_based_irs: "Directories containing fast5 files."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    processes: "Number of processes. Default: 1"
    num_regions: "Number of regions to plot. Default: 10"
    num_bases: "Number of bases to plot/output. Default: 21"
    q_value_threshold: "Plot all regions below provied q-value. Overrides\\n--num-regions."
    slide_span: "Number of bases offset over which to search when\\ncomputing distances for signal cluster plotting.\\nDefault: 0 (exact position)"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.signal_clusters.pdf"
    r_data_filename: "Filename to save R data structure. Default: Don't save"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
    var_14: "[CONTROL_FAST5_BASEDIRS ...]"
    var_15: "[--genome-fasta GENOME_FASTA]"
  }
  output {
    File out_stdout = stdout()
  }
}