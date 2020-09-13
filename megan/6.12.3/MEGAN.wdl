version 1.0

task MEGAN {
  command <<<
    MEGAN
  >>>
  output {
    File out_stdout = stdout()
  }
}