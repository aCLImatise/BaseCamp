version 1.0

task RunIceIterative2py {
  command <<<
    run_IceIterative2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}