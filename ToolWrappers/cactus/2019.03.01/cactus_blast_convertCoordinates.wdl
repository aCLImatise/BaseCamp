version 1.0

task CactusBlastConvertCoordinates {
  command <<<
    cactus_blast_convertCoordinates
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}