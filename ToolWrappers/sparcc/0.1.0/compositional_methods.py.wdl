version 1.0

task CompositionalMethodspy {
  command <<<
    compositional_methods_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}