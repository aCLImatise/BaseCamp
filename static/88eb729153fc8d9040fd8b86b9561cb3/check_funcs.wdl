version 1.0

task CheckFuncs {
  command <<<
    check_funcs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}