version 1.0

task UtilsPy2py {
  command <<<
    utils_py2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}