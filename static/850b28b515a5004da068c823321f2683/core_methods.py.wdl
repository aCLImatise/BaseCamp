version 1.0

task CoreMethodspy {
  command <<<
    core_methods_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}