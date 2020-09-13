version 1.0

task AMASpy {
  command <<<
    AMAS_py
  >>>
  output {
    File out_stdout = stdout()
  }
}