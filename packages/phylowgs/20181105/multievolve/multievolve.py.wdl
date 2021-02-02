version 1.0

task Multievolvepy {
  command <<<
    multievolve_py
  >>>
  output {
    File out_stdout = stdout()
  }
}