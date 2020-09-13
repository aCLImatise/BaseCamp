version 1.0

task ParseMismatchpy {
  command <<<
    parseMismatch_py
  >>>
  output {
    File out_stdout = stdout()
  }
}