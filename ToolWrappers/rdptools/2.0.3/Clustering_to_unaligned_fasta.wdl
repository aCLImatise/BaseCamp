version 1.0

task ClusteringTounalignedfasta {
  input {
    File input_file
  }
  command <<<
    Clustering to_unaligned_fasta \
      ~{input_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}