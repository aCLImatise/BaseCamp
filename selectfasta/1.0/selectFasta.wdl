version 1.0

task SelectFasta {
  input {
    Boolean? fast_q
    Boolean? list
    Boolean? random
    Boolean? fast_q_two_fast_a
    Boolean? fast_a
    Boolean? fast_a_sel
  }
  command <<<
    selectFasta \
      ~{true="-fastq" false="" fast_q} \
      ~{true="-list" false="" list} \
      ~{true="-random" false="" random} \
      ~{true="-fastq2fasta" false="" fast_q_two_fast_a} \
      ~{true="-fasta" false="" fast_a} \
      ~{true="-fasta_sel" false="" fast_a_sel}
  >>>
  parameter_meta {
    fast_q: "FILE  (fastq file to select reads from) "
    list: "FILE  (list of reads, fastq or fasta) "
    random: "VAL   (number of random reads to be selected from fastq file) "
    fast_q_two_fast_a: "(convert fastq file to fasta)"
    fast_a: "FILE  (fasta file to select reads from) "
    fast_a_sel: "(from fasta file select reads in -list, if not flag, reads not in list are selected)"
  }
}