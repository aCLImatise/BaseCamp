version 1.0

task Parseval {
  input {
    Boolean? debug
    Boolean? delta
    Boolean? verbose
    Boolean? data_share
    File? out_format
    Boolean? no_gff_three
    Boolean? no_png
    Boolean? summary
    Boolean? overwrite
    Boolean? refr_label
    Boolean? pred_label
    Boolean? make_filter
    Boolean? filter_file
    Boolean? max_trans
    String comparison
  }
  command <<<
    parseval \
      ~{comparison} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (delta) then "--delta" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (data_share) then "--datashare" else ""} \
      ~{if (out_format) then "--outformat" else ""} \
      ~{if (no_gff_three) then "--nogff3" else ""} \
      ~{if (no_png) then "--nopng" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (refr_label) then "--refrlabel" else ""} \
      ~{if (pred_label) then "--predlabel" else ""} \
      ~{if (make_filter) then "--makefilter" else ""} \
      ~{if (filter_file) then "--filterfile" else ""} \
      ~{if (max_trans) then "--maxtrans" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    debug: ":                 Print debugging messages"
    delta: ": INT             Extend gene loci by this many nucleotides;\\ndefault is 0"
    verbose: ":               Print verbose warning messages"
    data_share: ": STRING      Location from which to copy shared data for\\nHTML output (if `make install' has not yet\\nbeen run)"
    out_format: ": STRING      Indicate desired output format; possible\\noptions: 'csv', 'text', or 'html'\\n(default='text'); in 'text' or 'csv' mode,\\nwill create a single file; in 'html' mode,\\nwill create a directory"
    no_gff_three: ":                Do no print GFF3 output corresponding to each"
    no_png: ":                 In HTML output mode, skip generation of PNG\\ngraphics for each gene locus"
    summary: ":               Only print summary statistics, do not print\\nindividual comparisons"
    overwrite: ":             Force overwrite of any existing output files"
    refr_label: ": STRING      Optional label for reference annotations"
    pred_label: ": STRING      Optional label for prediction annotations"
    make_filter: "Create a default configuration file for\\nfiltering reported results and quit,\\nperforming no comparisons"
    filter_file: ": STRING     Use the indicated configuration file to\\nfilter reported results;"
    max_trans: ": INT          Maximum transcripts allowed per locus; use 0\\nto disable limit; default is 32\\n"
    comparison: "-o|--outfile: FILENAME      File/directory to which output will be"
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
  }
}