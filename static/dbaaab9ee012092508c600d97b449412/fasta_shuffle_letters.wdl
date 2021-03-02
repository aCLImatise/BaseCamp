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
    docker: "None"
  }
  parameter_meta {
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}