version 1.0

task IoMethodspy {
  command <<<
    io_methods_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}