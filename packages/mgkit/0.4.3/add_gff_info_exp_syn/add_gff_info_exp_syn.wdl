version 1.0

task AddgffinfoExpSyn {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info exp_syn \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-r, --reference FILENAME  reference sequence in fasta format  [required]\\n-s, --split               Split the sequence header of the reference at the\\nfirst space, to emulate BLAST behaviour\\n--progress                Shows Progress Bar\\n--help                    Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}