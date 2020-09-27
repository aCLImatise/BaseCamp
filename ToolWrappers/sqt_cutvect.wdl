version 1.0

task SqtCutvect {
  input {
    String vector
    String reads
  }
  command <<<
    sqt cutvect \
      ~{vector} \
      ~{reads}
  >>>
  parameter_meta {
    vector: "FASTA with vector sequence(s)"
    reads: "FASTA/FASTQ with read"
  }
  output {
    File out_stdout = stdout()
  }
}