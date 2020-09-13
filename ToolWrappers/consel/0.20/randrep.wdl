version 1.0

task Randrep {
  command <<<
    randrep
  >>>
  output {
    File out_stdout = stdout()
  }
}