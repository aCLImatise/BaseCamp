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
    docker: "quay.io/biocontainers/last:1219--h2e03b76_0"
  }
  parameter_meta {
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}