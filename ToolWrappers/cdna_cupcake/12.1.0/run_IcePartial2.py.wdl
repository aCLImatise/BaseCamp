version 1.0

task RunIcePartial2py {
  command <<<
    run_IcePartial2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}