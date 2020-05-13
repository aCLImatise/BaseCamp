version 1.0

task SplitFastxOutput {
  input {
    String? inputInput
    String? outputOutput
    String? chunksizeChunksize
  }
  command <<<
    split_fastx output \
      ~{inputInput} \
      ~{outputOutput} \
      ~{chunksizeChunksize}
  >>>
}