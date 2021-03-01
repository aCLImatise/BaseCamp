version 1.0

task RcSpy {
  command <<<
    rc_s_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}