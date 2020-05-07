version 1.0

task SplitFastxChunksize {
  input {
    String? inputInput
    String? outputOutput
    String? chunksizeChunksize
  }
  command <<<
    split_fastx chunksize \
      ~{inputInput} \
      ~{outputOutput} \
      ~{chunksizeChunksize}
  >>>
}