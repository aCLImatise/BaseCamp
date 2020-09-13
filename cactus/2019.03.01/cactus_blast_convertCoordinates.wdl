version 1.0

task CactusBlastConvertCoordinates {
  command <<<
    cactus_blast_convertCoordinates
  >>>
  output {
    File out_stdout = stdout()
  }
}