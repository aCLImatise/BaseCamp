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
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (list) then "-list" else ""} \
      ~{if (random) then "-random" else ""} \
      ~{if (fast_q_two_fast_a) then "-fastq2fasta" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fast_a_sel) then "-fasta_sel" else ""}
  >>>
  parameter_meta {
    fast_q: "FILE  (fastq file to select reads from)"
    list: "FILE  (list of reads, fastq or fasta)"
    random: "VAL   (number of random reads to be selected from fastq file)"
    fast_q_two_fast_a: "(convert fastq file to fasta)"
    fast_a: "FILE  (fasta file to select reads from)"
    fast_a_sel: "(from fasta file select reads in -list, if not flag, reads not in list are selected)"
  }
  output {
    File out_stdout = stdout()
  }
}