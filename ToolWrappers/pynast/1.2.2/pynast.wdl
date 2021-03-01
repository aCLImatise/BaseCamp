version 1.0

task Pynast {
  command <<<
    pynast
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}