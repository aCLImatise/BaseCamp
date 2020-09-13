version 1.0

task TomboPlotKmer {
  input {
    Array[Int] fast_five_based_irs
    String? upstream_bases
    String? downstream_bases
    Boolean? read_mean
    Int? num_km_er_threshold
    Int? num_reads
    File? pdf_filename
    File? r_data_filename
    Boolean? dont_plot
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot_kmer \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(upstream_bases) then ("--upstream-bases " +  '"' + upstream_bases + '"') else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{if (read_mean) then "--read-mean" else ""} \
      ~{if defined(num_km_er_threshold) then ("--num-kmer-threshold " +  '"' + num_km_er_threshold + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{if (dont_plot) then "--dont-plot" else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    upstream_bases: "Upstream bases in k-mer. Default: 1"
    downstream_bases: "Downstream bases in k-mer. Default: 2"
    read_mean: "Plot k-mer means across whole reads as opposed to\\nindividual k-mer event levels."
    num_km_er_threshold: "Observations of each k-mer required to include a read\\nin read level averages. Default: 1"
    num_reads: "Number of reads to plot. Default: 100"
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.kmer_distribution.pdf"
    r_data_filename: "Filename to save R data structure. Default: Don't save"
    dont_plot: "Don't plot result. Useful to produce only R data file."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}