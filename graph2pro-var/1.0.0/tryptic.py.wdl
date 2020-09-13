version 1.0

task Trypticpy {
  command <<<
    tryptic_py
  >>>
  output {
    File out_stdout = stdout()
  }
}