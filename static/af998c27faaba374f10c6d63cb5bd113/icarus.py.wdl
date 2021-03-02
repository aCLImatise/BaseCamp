version 1.0

task Icaruspy {
  command <<<
    icarus_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}