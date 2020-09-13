version 1.0

task Ctail {
  command <<<
    ctail
  >>>
  output {
    File out_stdout = stdout()
  }
}