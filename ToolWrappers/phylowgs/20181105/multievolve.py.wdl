version 1.0

task Multievolvepy {
  command <<<
    multievolve_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}