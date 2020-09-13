version 1.0

task Qconvex {
  command <<<
    qconvex
  >>>
  output {
    File out_stdout = stdout()
  }
}