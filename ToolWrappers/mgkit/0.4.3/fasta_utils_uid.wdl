version 1.0

task FastautilsUid {
  input {
    Boolean? verbose
    String? fast_a_file
    String? output_file
  }
  command <<<
    fasta_utils uid \
      ~{fast_a_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-t, --table FILENAME  Filename of a table to record the changes (by default\\ndiscards it)\\n--help                Show this message and exit.\\n"
    fast_a_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}