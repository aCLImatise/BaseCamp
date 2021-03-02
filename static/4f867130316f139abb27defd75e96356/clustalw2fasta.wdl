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
    docker: "None"
  }
  parameter_meta {
    alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}