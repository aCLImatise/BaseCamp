version 1.0

task EnaDataGetpy {
  command <<<
    enaDataGet_py
  >>>
  output {
    File out_stdout = stdout()
  }
}