version 1.0

task Fastashuffleletters {
  input {
    File sequence_file
  }
  command <<<
    fasta_shuffle_letters \
      ~{sequence_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}