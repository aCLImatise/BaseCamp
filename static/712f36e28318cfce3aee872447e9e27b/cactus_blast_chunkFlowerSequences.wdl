version 1.0

task CactusBlastChunkFlowerSequences {
  command <<<
    cactus_blast_chunkFlowerSequences
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}