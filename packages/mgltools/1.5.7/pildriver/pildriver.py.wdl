version 1.0

task Pildriverpy {
  command <<<
    pildriver_py
  >>>
  output {
    File out_stdout = stdout()
  }
}