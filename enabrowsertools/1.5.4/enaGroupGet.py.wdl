version 1.0

task EnaGroupGetpy {
  command <<<
    enaGroupGet_py
  >>>
  output {
    File out_stdout = stdout()
  }
}