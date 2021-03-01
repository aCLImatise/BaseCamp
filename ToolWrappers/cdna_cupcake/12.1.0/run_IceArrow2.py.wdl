version 1.0

task RunIceArrow2py {
  command <<<
    run_IceArrow2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}