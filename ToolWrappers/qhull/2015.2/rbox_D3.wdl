version 1.0

task RboxD3 {
  command <<<
    rbox D3
  >>>
  output {
    File out_stdout = stdout()
  }
}