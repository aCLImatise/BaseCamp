version 1.0

task Shustring {
  input {
    String general
  }
  command <<<
    shustring \
      ~{general}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    general: "[-q quiet - do not print shustrings; default: print shustrings]\\n[-n nucleotide sequence (DNA); default: arbitrary ASCII strings]\\n[-r include reverse complement (implies -n); default: only forward strand]\\n[-u preserve IUPAC nomenclature in nucleotide sequences; default: convert to ACGT]\\n[-p print information about program]\\n[-h print this help message]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}