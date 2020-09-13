version 1.0

task Hint {
  command <<<
    hint
  >>>
  output {
    File out_stdout = stdout()
  }
}