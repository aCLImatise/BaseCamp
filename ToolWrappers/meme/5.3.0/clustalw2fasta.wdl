version 1.0

task Clustalw2fasta {
  input {
    File alignment_file
  }
  command <<<
    clustalw2fasta \
      ~{alignment_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}