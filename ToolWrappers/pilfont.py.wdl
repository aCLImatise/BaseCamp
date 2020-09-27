version 1.0

task Pilfontpy {
  command <<<
    pilfont_py
  >>>
  output {
    File out_stdout = stdout()
  }
}