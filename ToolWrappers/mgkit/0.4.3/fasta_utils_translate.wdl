version 1.0

task FastautilsTranslate {
  input {
    Boolean? verbose
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils translate \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-t, --trans-table [bac_plt|drs_mit|inv_mit|prt_mit|universal|vt_mit|yst_alt|yst_mit]\\ntranslation table  [default: universal]\\n--progress                      Shows Progress Bar\\n--help                          Show this message and exit.\\n"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}