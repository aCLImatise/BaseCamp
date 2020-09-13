version 1.0

task RsatMatrixscanquick {
  input {
    Boolean? read_sequence_filename
    File? print_output_specified
    Boolean? read_matrix_matrix
    Boolean? bg_file
    Boolean? two_str
    Boolean? one_str
    Boolean? capture_sites_score
    Boolean? name
    Boolean? distrib
    Boolean? decimals
    Boolean? pseudo
    Boolean? first_hit_per_seq
    Boolean? origin
    Boolean? offset
    String matrix_scan_quick
    Int author
    String sequences
    String pssm
  }
  command <<<
    rsat matrix_scan_quick \
      ~{matrix_scan_quick} \
      ~{author} \
      ~{sequences} \
      ~{pssm} \
      ~{if (read_sequence_filename) then "-i" else ""} \
      ~{if (print_output_specified) then "-o" else ""} \
      ~{if (read_matrix_matrix) then "-m" else ""} \
      ~{if (bg_file) then "-bgfile" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (capture_sites_score) then "-t" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (distrib) then "-distrib" else ""} \
      ~{if (decimals) then "-decimals" else ""} \
      ~{if (pseudo) then "-pseudo" else ""} \
      ~{if (first_hit_per_seq) then "-first_hit_per_seq" else ""} \
      ~{if (origin) then "-origin" else ""} \
      ~{if (offset) then "-offset" else ""}
  >>>
  parameter_meta {
    read_sequence_filename: "#                  read sequence from filename # (FASTA format).\\nif not specified, the standard input is used."
    print_output_specified: "#                  print the output to filename #.\\nif not specified, the standard output is used."
    read_matrix_matrix: "#                  read the matrix # or first matrix in # (must be in tab format)."
    bg_file: "#             use # as background model (must be in INCLUSive format).\\nby default an equiprobable model is used."
    two_str: "scan both DNA strands."
    one_str: "scan only one DNA strand."
    capture_sites_score: "#                  capture sites with a score >= #.\\ncapture sites with a P-value <= # if -distrib is used."
    name: "#               set the matrix name to #."
    distrib: "#            read score distrib file # (generated by matrix-distrib)."
    decimals: "#           precision parameter for the -return distrib option."
    pseudo: "#             pseudo-count for the matrix (1.0 by default)."
    first_hit_per_seq: "only report the first hit per sequence."
    origin: "[start|end|center]\\nspecify the origin for the calculation of positions\\n(see matrix-scan manual for details)."
    offset: "#             add an offset to the origin (0 by default)"
    matrix_scan_quick: "VERSION"
    author: "AUTHOR"
    sequences: "pattern matching"
    pssm: "USAGE        "
  }
  output {
    File out_stdout = stdout()
    File out_print_output_specified = "${in_print_output_specified}"
  }
}