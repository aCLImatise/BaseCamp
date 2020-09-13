version 1.0

task Bamsort {
  command <<<
    bamsort
  >>>
  output {
    File out_stdout = stdout()
  }
}