version 1.0

task CactusBatchMergeChunks {
  command <<<
    cactus_batch_mergeChunks
  >>>
  output {
    File out_stdout = stdout()
  }
}