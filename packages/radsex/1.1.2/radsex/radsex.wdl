version 1.0

task Radsex {
  command <<<
    radsex
  >>>
  output {
    File out_stdout = stdout()
  }
}