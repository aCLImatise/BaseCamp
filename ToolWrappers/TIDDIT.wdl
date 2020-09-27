version 1.0

task TIDDIT {
  command <<<
    TIDDIT
  >>>
  output {
    File out_stdout = stdout()
  }
}