version 1.0

task GcSkew {
  input {
    Boolean? _fastas
    Int? minimum_contig_length
    Int? window_length_default
    Int? slide_length_default
    Boolean? single
    Boolean? no_plot
    String? var_6
  }
  command <<<
    gc_skew \
      ~{var_6} \
      ~{if (_fastas) then "-f" else ""} \
      ~{if defined(minimum_contig_length) then ("-l " +  '"' + minimum_contig_length + '"') else ""} \
      ~{if defined(window_length_default) then ("-w " +  '"' + window_length_default + '"') else ""} \
      ~{if defined(slide_length_default) then ("-s " +  '"' + slide_length_default + '"') else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (no_plot) then "--no-plot" else ""}
  >>>
  parameter_meta {
    _fastas: "[F [F ...]]  fasta(s)"
    minimum_contig_length: "minimum contig length (default = 10 x window)"
    window_length_default: "window length (default = 1000)"
    slide_length_default: "slide length (default = 10)"
    single: "combine multi-fasta sequences into single genome"
    no_plot: "do not generate plots, print GC Skew to stdout"
    var_6: ""
  }
  output {
    File out_stdout = stdout()
  }
}