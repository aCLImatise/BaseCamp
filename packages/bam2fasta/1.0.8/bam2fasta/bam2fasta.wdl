version 1.0

task Bam2fasta {
  input {
    String optional_arguments
  }
  command <<<
    bam2fasta \
      ~{optional_arguments}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bam2fasta:1.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    optional_arguments: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}