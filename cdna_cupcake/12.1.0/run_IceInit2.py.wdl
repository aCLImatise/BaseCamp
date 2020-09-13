version 1.0

task RunIceInit2py {
  command <<<
    run_IceInit2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}