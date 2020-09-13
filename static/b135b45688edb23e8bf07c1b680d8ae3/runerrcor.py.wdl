version 1.0

task Runerrcorpy {
  command <<<
    runerrcor_py
  >>>
  output {
    File out_stdout = stdout()
  }
}