version 1.0

task LastMergeBatches {
  input {
    File? filesFiles
  }
  command <<<
    last-merge-batches \
      ~{filesFiles}
  >>>
}