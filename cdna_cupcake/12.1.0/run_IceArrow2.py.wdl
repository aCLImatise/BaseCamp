version 1.0

task RunIceArrow2py {
  command <<<
    run_IceArrow2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}