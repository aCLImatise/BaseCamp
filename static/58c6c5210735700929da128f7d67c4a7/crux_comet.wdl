version 1.0

task CruxComet {
  command <<<
    crux comet
  >>>
  output {
    File out_stdout = stdout()
  }
}