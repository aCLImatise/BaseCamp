version 1.0

task RcGnupy {
  command <<<
    rc_gnu_py
  >>>
  output {
    File out_stdout = stdout()
  }
}