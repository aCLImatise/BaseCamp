version 1.0

task RunIceInit2py {
  command <<<
    run_IceInit2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}