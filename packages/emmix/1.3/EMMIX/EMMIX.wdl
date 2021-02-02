version 1.0

task EMMIX {
  command <<<
    EMMIX
  >>>
  output {
    File out_stdout = stdout()
  }
}