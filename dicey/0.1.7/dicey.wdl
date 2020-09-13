version 1.0

task Dicey {
  command <<<
    dicey
  >>>
  output {
    File out_stdout = stdout()
  }
}