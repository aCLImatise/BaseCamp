version 1.0

task CactusBlastChunkFlowerSequences {
  command <<<
    cactus_blast_chunkFlowerSequences
  >>>
  output {
    File out_stdout = stdout()
  }
}