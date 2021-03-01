version 1.0

task CactusBlastChunkSequences {
  command <<<
    cactus_blast_chunkSequences
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}