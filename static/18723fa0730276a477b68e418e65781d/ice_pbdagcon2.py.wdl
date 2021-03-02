version 1.0

task IcePbdagcon2py {
  command <<<
    ice_pbdagcon2_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}