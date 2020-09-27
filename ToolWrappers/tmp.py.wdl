version 1.0

task Tmppy {
  command <<<
    tmp_py
  >>>
  output {
    File out_stdout = stdout()
  }
}