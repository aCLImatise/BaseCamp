version 1.0

task RboxD3 {
  command <<<
    rbox D3
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}