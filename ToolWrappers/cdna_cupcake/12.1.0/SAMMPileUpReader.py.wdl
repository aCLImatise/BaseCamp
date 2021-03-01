version 1.0

task SAMMPileUpReaderpy {
  command <<<
    SAMMPileUpReader_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}