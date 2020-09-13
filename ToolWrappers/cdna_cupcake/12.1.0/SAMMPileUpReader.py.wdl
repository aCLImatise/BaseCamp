version 1.0

task SAMMPileUpReaderpy {
  command <<<
    SAMMPileUpReader_py
  >>>
  output {
    File out_stdout = stdout()
  }
}