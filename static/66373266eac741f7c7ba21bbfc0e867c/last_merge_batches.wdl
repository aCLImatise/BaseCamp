version 1.0

task Lastmergebatches {
  input {
    String files
  }
  command <<<
    last_merge_batches \
      ~{files}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}