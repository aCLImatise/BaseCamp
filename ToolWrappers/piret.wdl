version 1.0

task Piret {
  command <<<
    piret
  >>>
  output {
    File out_stdout = stdout()
  }
}