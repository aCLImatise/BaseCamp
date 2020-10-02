version 1.0

task GetgffinfoSequence {
  input {
    Boolean? verbose
    String? gff_file
    String? fast_a_file
  }
  command <<<
    get_gff_info sequence \
      ~{gff_file} \
      ~{fast_a_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-r, --reverse             Reverse complement sequences on the - strand\\n-w, --no-wrap             Write the sequences on one line\\n-s, --split               Split the sequence header of the reference at the\\nfirst space, to emulate BLAST behaviour\\n-f, --reference FILENAME  Fasta file containing the reference sequences of\\nthe GFF file\\n--progress                Shows Progress Bar\\n--help                    Show this message and exit.\\n"
    gff_file: ""
    fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}