version 1.0

task Mummerplot {
  input {
    Boolean? breaklen_highlight_alignments
    Boolean? c
    Boolean? depend
    Boolean? f
    Boolean? filter
    Boolean? help
    Boolean? l
    Boolean? layout
    Boolean? fat
    Boolean? prefix_set_prefix
    Boolean? rv
    Boolean? idr_plot_id
    Boolean? idq_plot_id
    Boolean? rfile_plot_set
    Boolean? qfile_plot_set
    Boolean? size_set_size
    Boolean? medium
    Boolean? var_17
    Boolean? snp
    Boolean? terminal_set_terminal
    Boolean? postscript
    Boolean? xrange_set_xrange
    Boolean? yrange_set_yrange
    Boolean? v
    File match_file
  }
  command <<<
    mummerplot \
      ~{match_file} \
      ~{if (breaklen_highlight_alignments) then "-b" else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (depend) then "--depend" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (filter) then "--filter" else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (l) then "-l" else ""} \
      ~{if (layout) then "--layout" else ""} \
      ~{if (fat) then "--fat" else ""} \
      ~{if (prefix_set_prefix) then "-p" else ""} \
      ~{if (rv) then "-rv" else ""} \
      ~{if (idr_plot_id) then "-r" else ""} \
      ~{if (idq_plot_id) then "-q" else ""} \
      ~{if (rfile_plot_set) then "-R" else ""} \
      ~{if (qfile_plot_set) then "-Q" else ""} \
      ~{if (size_set_size) then "-s" else ""} \
      ~{if (medium) then "--medium" else ""} \
      ~{if (var_17) then "-S" else ""} \
      ~{if (snp) then "--SNP" else ""} \
      ~{if (terminal_set_terminal) then "-t" else ""} \
      ~{if (postscript) then "--postscript" else ""} \
      ~{if (xrange_set_xrange) then "-x" else ""} \
      ~{if (yrange_set_yrange) then "-y" else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    breaklen_highlight_alignments: "|breaklen     Highlight alignments with breakpoints further than\\nbreaklen nucleotides from the nearest sequence end"
    c: ""
    depend: "Print the dependency information and exit"
    f: ""
    filter: "Only display .delta alignments which represent the \\\"best\\\"\\nhit to any particular spot on either sequence, i.e. a\\none-to-one mapping of reference and query subsequences"
    help: "Display help information and exit"
    l: ""
    layout: "Layout a .delta multiplot in an intelligible fashion,\\nthis option requires the -R -Q options"
    fat: "Layout sequences using fattest alignment only"
    prefix_set_prefix: "|prefix       Set the prefix of the output files (default 'out')"
    rv: "Reverse video for x11 plots"
    idr_plot_id: "|IdR          Plot a particular reference sequence ID on the X-axis"
    idq_plot_id: "|IdQ          Plot a particular query sequence ID on the Y-axis"
    rfile_plot_set: "|Rfile        Plot an ordered set of reference sequences from Rfile"
    qfile_plot_set: "|Qfile        Plot an ordered set of query sequences from Qfile\\nRfile/Qfile Can either be the original DNA multi-FastA\\nfiles or lists of sequence IDs, lens and dirs [ /+/-]"
    size_set_size: "|size         Set the output size to small, medium or large"
    medium: "(default 'small')"
    var_17: ""
    snp: "Highlight SNP locations in each alignment"
    terminal_set_terminal: "|terminal     Set the output terminal to x11, postscript or png"
    postscript: "(default 'x11')"
    xrange_set_xrange: "|xrange       Set the xrange for the plot '[min:max]'"
    yrange_set_yrange: "|yrange       Set the yrange for the plot '[min:max]'"
    v: ""
    match_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}