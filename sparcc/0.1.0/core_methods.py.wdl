version 1.0

task CoreMethodspy {
  command <<<
    core_methods_py
  >>>
  output {
    File out_stdout = stdout()
  }
}