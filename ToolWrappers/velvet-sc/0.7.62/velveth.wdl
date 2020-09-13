version 1.0

task Velveth {
  input {
    Boolean? fast_a
    Boolean? fast_q
    Boolean? fasta_do_tgz
    Boolean? fast_q_do_tgz
    Boolean? sam
    Boolean? bam
    Boolean? el_and
    Boolean? gerald
    Boolean? short
    Boolean? short_paired
    Boolean? short_two
    Boolean? short_paired_two
    Boolean? long
    Boolean? long_paired
    Boolean? strand_specific
    Directory directory
    String hash_length
    File filename
  }
  command <<<
    velveth \
      ~{directory} \
      ~{hash_length} \
      ~{filename} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fast_q) then "-fastq" else ""} \
      ~{if (fasta_do_tgz) then "-fasta.gz" else ""} \
      ~{if (fast_q_do_tgz) then "-fastq.gz" else ""} \
      ~{if (sam) then "-sam" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (el_and) then "-eland" else ""} \
      ~{if (gerald) then "-gerald" else ""} \
      ~{if (short) then "-short" else ""} \
      ~{if (short_paired) then "-shortPaired" else ""} \
      ~{if (short_two) then "-short2" else ""} \
      ~{if (short_paired_two) then "-shortPaired2" else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if (long_paired) then "-longPaired" else ""} \
      ~{if (strand_specific) then "-strand_specific" else ""}
  >>>
  parameter_meta {
    fast_a: ""
    fast_q: ""
    fasta_do_tgz: ""
    fast_q_do_tgz: ""
    sam: ""
    bam: ""
    el_and: ""
    gerald: ""
    short: ""
    short_paired: ""
    short_two: ""
    short_paired_two: ""
    long: ""
    long_paired: ""
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    directory: ": directory name for output files"
    hash_length: ": odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)"
    filename: ": path to sequence file or - for standard input"
  }
  output {
    File out_stdout = stdout()
  }
}