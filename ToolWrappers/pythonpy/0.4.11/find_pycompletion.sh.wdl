version 1.0

task FindPycompletionsh {
  command <<<
    find_pycompletion_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}