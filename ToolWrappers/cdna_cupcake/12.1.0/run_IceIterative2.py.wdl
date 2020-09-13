version 1.0

task RunIceIterative2py {
  command <<<
    run_IceIterative2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}