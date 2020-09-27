version 1.0

task FiltergffCov {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    filter_gff cov \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-f, --reference FILENAME  Reference FASTA file for the GFF  [required]\\n-s, --strand-specific     If the coverage must be calculated on each strand\\n-t, --sorted              Assumes the GFF to be correctly sorted\\n-c, --min-coverage FLOAT  Minimum coverage for the contig/strand\\n-r, --rename              Emulates BLAST in reading the FASTA file (keeps\\nonly the header before the first space)\\n--progress                Shows Progress Bar\\n--help                    Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}