version 1.0

task NanorawPlotKmer {
  input {
    Array[String] base_call_subgroups
    Boolean? two_d
    Array[Int] fast_five_based_irs
    String? upstream_bases
    String? downstream_bases
    Boolean? read_mean
    Int? corrected_group
    File? pdf_filename
    Int? num_reads
    File? r_data_filename
    Boolean? dont_plot
    Boolean? quiet
    String event_dot
  }
  command <<<
    nanoraw plot_kmer \
      ~{event_dot} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (two_d) then "--2d" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(upstream_bases) then ("--upstream-bases " +  '"' + upstream_bases + '"') else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{if (read_mean) then "--read-mean" else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(r_data_filename) then ("--r-data-filename " +  '"' + r_data_filename + '"') else ""} \
      ~{if (dont_plot) then "--dont-plot" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    base_call_subgroups: "FAST5 subgroup (under Analyses/[corrected-group])\\nwhere individual template and/or complement reads are\\nstored. Default: ['BaseCalled_template']"
    two_d: "Input contains 2D reads. Equivalent to `--basecall-\\nsubgroups BaseCalled_template BaseCalled_complement`"
    fast_five_based_irs: "Directories containing fast5 files."
    upstream_bases: "Upstream bases in k-mer. Should be one of {0,1,2,3}.\\nDefault: 1"
    downstream_bases: "Downstream bases in k-mer. Should be one of {0,1,2,3}.\\nDefault: 2"
    read_mean: "Plot kmer event means across reads as opposed to each"
    corrected_group: "FAST5 group to access/plot created by\\ngenome_resquiggle script. Default:\\nRawGenomeCorrected_000"
    pdf_filename: "PDF filename to store plot(s). Default:\\nNanopore_kmer_distribution.pdf"
    num_reads: "Number of reads to plot (one region per read).\\nDefault: 500"
    r_data_filename: "Filename to save R data structure. Defualt: Don't save"
    dont_plot: "Don't actually plot the result. Useful when you only\\nwant the R data file."
    quiet: "Don't print status information."
    event_dot: "--num-kmer-threshold NUM_KMER_THRESHOLD"
  }
  output {
    File out_stdout = stdout()
  }
}