version 1.0

task JeDebarcode {
  input {
    Boolean? displays_options_specific
    Int col_two_dot
    String e_dot_gdot
    String or
    String required_dot
    String formats_dot
    String barcoded_dot
  }
  command <<<
    je debarcode \
      ~{col_two_dot} \
      ~{e_dot_gdot} \
      ~{or} \
      ~{required_dot} \
      ~{formats_dot} \
      ~{barcoded_dot} \
      ~{if (displays_options_specific) then "-H" else ""}
  >>>
  parameter_meta {
    displays_options_specific: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    col_two_dot: "In this format, a simple BARCODE slot is expected in the ReadLayout and NO headers are "
    e_dot_gdot: "sample1 ATAT|GAGG:CCAA|TGTG\\n3. Extended barcode file format : 3 (single-end) or 4 (paired-end) tab-delimited colums\\nsame as the simple barcode file format but the extra columns contains the file name(s)"
    or: "sample1          ATAT|GAGG:CCAA|TGTG     spl1_1.txt.gz   spl1_2.txt.gz"
    required_dot: "Cannot be used in conjuction with option(s) USE_EMBASE (EM)"
    formats_dot: "When provided, Je expects as many 'OF=' as output layouts ('OL=...') parameters or "
    barcoded_dot: "Default value: null. "
  }
  output {
    File out_stdout = stdout()
  }
}