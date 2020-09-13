version 1.0

task Scg {
  command <<<
    scg
  >>>
  output {
    File out_stdout = stdout()
  }
}