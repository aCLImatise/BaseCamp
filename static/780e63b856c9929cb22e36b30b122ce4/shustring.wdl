version 1.0

task Shustring {
  input {
    String input_slash_output
    String general
  }
  command <<<
    shustring \
      ~{input_slash_output} \
      ~{general}
  >>>
  parameter_meta {
    input_slash_output: "[-i <FILE> input file; default: FILE=stdin]\\n[-o <FILE> write output to FILE; default: FILE=stdout]"
    general: "[-q quiet - do not print shustrings; default: print shustrings]\\n[-n nucleotide sequence (DNA); default: arbitrary ASCII strings]\\n[-r include reverse complement (implies -n); default: only forward strand]\\n[-u preserve IUPAC nomenclature in nucleotide sequences; default: convert to ACGT]\\n[-p print information about program]\\n[-h print this help message]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}