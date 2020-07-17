version 1.0

task LastMergeBatches {
  input {
    File files
  }
  command <<<
    last-merge-batches \
      ~{files}
  >>>
  parameter_meta {
    files: ""
  }
}