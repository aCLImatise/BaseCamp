version 1.0

task FastaMultigrep.pl {
  input {
    Boolean listList
    Boolean faFa
    Boolean manMan
  }
  command <<<
    fasta_multigrep.pl \
      ~{true="--list" false="" listList} \
      ~{true="--fa" false="" faFa} \
      ~{true="--man" false="" manMan}
  >>>
}