version 1.0

task SelectFasta {
  input {
    Boolean fastFastQ
    Boolean listList
    Boolean randomRandom
    Boolean fastq2fastaFastq2fasta
    Boolean fastFastA
    Boolean fastFastASel
  }
  command <<<
    selectFasta \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-list" false="" listList} \
      ~{true="-random" false="" randomRandom} \
      ~{true="-fastq2fasta" false="" fastq2fastaFastq2fasta} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-fasta_sel" false="" fastFastASel}
  >>>
}