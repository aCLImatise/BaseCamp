version 1.0

task TERefiner1 {
  command <<<
    TERefiner_1
  >>>
  output {
    File out_stdout = stdout()
  }
}