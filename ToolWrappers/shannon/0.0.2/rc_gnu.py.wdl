version 1.0

task RcGnupy {
  command <<<
    rc_gnu_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}