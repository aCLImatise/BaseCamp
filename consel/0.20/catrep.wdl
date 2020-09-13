version 1.0

task Catrep {
  command <<<
    catrep
  >>>
  output {
    File out_stdout = stdout()
  }
}