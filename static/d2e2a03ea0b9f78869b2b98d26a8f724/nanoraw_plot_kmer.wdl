version 1.0

task NanorawPlotKmer {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[String] fast_five_based_irs
    String? upstream_bases
    String? downstream_bases
    Boolean? read_mean
    String? num_km_er_threshold
    String? corrected_group
    String? pdf_filename
    String? num_reads
    String? r_data_filename
    Boolean? dont_plot
    Boolean? quiet
  }
  command <<<
    nanoraw plot_kmer \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--2d" false="" two_d} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(upstream_bases) then ("--upstream-bases " +  '"' + upstream_bases + '"') else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{true="--read-mean" false="" read_mean} \
      ~{if defined(num_km_er_threshold) then ("--num-kmer-threshold " +  '"' + num_km_er_threshold + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{true="--dont-plot" false="" dont_plot} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group]) where individual template and/or complement reads are stored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall- subgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    upstream_bases: "Upstream bases in k-mer. Should be one of {0,1,2,3}. Default: 1"
    downstream_bases: "Downstream bases in k-mer. Should be one of {0,1,2,3}. Default: 2"
    read_mean: "Plot kmer event means across reads as opposed to each event."
    num_km_er_threshold: "Number of each kmer required to include a read in read level averages. Default: 4"
    corrected_group: "FAST5 group to access/plot created by genome_resquiggle script. Default: RawGenomeCorrected_000"
    pdf_filename: "PDF filename to store plot(s). Default: Nanopore_kmer_distribution.pdf"
    num_reads: "Number of reads to plot (one region per read). Default: 500"
    r_data_filename: "Filename to save R data structure. Defualt: Don't save"
    dont_plot: "Don't actually plot the result. Useful when you only want the R data file."
    quiet: "Don't print status information."
  }
}