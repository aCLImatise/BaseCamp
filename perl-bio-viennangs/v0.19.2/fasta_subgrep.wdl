version 1.0

task FastaSubgrep.pl {
  input {
    Boolean faFa
    Boolean startStart
    Boolean endEnd
    Boolean idId
    Boolean strandStrand
    Boolean manMan
  }
  command <<<
    fasta_subgrep.pl \
      ~{true="--fa" false="" faFa} \
      ~{true="--start" false="" startStart} \
      ~{true="--end" false="" endEnd} \
      ~{true="--id" false="" idId} \
      ~{true="--strand" false="" strandStrand} \
      ~{true="--man" false="" manMan}
  >>>
}