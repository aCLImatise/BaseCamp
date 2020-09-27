version 1.0

task Velveth {
  input {
    Boolean? fast_a
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
      ~{if (strand_specific) then "-strand_specific" else ""}
  >>>
  parameter_meta {
    fast_a: "-fastq\\n-fasta.gz\\n-fastq.gz\\n-sam\\n-bam\\n-eland\\n-gerald"
    strand_specific: ": for strand specific transcriptome sequencing data (default: off)"
    directory: ": directory name for output files"
    hash_length: ": odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)"
    filename: ": path to sequence file or - for standard input"
  }
  output {
    File out_stdout = stdout()
  }
}