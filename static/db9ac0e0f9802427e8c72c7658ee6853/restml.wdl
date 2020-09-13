version 1.0

task Restml {
  command <<<
    restml
  >>>
  output {
    File out_stdout = stdout()
  }
}