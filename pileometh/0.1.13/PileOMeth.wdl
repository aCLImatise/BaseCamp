version 1.0

task PileOMeth {
  command <<<
    PileOMeth
  >>>
  output {
    File out_stdout = stdout()
  }
}