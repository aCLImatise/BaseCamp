version 1.0

task FastaMultigrep.pl {
  input {
    Boolean? list
    Boolean? fa
    Boolean? man
  }
  command <<<
    fasta_multigrep.pl \
      ~{true="--list" false="" list} \
      ~{true="--fa" false="" fa} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    list: "Colon (:) separated list of Fasta IDs to extract (mandatory)"
    fa: "Input file in Fasta format (mandatory)"
    man: "Prints the manual page and exits"
  }
}