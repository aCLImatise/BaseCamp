version 1.0

task Bam2fasta {
  input {
    String? commandCommand
  }
  command <<<
    bam2fasta \
      ~{commandCommand}
  >>>
}