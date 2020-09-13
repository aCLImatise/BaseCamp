version 1.0

task Simwalk2 {
  command <<<
    simwalk2
  >>>
  output {
    File out_stdout = stdout()
  }
}