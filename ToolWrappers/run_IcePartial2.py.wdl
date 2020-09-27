version 1.0

task RunIcePartial2py {
  command <<<
    run_IcePartial2_py
  >>>
  output {
    File out_stdout = stdout()
  }
}