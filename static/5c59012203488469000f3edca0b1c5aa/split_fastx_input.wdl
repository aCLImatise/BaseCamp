version 1.0

task SplitFastxInput {
  input {
    String? inputInput
    String? outputOutput
    String? chunksizeChunksize
  }
  command <<<
    split_fastx input \
      ~{inputInput} \
      ~{outputOutput} \
      ~{chunksizeChunksize}
  >>>
}