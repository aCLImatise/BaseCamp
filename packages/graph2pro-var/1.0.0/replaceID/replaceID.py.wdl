version 1.0

task ReplaceIDpy {
  command <<<
    replaceID_py
  >>>
  output {
    File out_stdout = stdout()
  }
}