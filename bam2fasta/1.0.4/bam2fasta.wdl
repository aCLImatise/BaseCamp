version 1.0

task Bam2fasta {
  input {
    String optional_arguments
  }
  command <<<
    bam2fasta \
      ~{optional_arguments}
  >>>
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}