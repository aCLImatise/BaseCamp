version 1.0

task FindPycompletionsh {
  command <<<
    find_pycompletion_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}