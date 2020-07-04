version 1.0

task Shustring {
  input {
    String general
  }
  command <<<
    shustring \
      ~{general}
  >>>
  parameter_meta {
    general: "[-q quiet - do not print shustrings; default: print shustrings] [-n nucleotide sequence (DNA); default: arbitrary ASCII strings] [-r include reverse complement (implies -n); default: only forward strand] [-u preserve IUPAC nomenclature in nucleotide sequences; default: convert to ACGT] [-p print information about program] [-h print this help message]"
  }
}