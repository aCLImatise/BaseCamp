version 1.0

task CactusBlastChunkSequences {
  command <<<
    cactus_blast_chunkSequences
  >>>
  output {
    File out_stdout = stdout()
  }
}