version 1.0

task Cyclone {
  command <<<
    cyclone
  >>>
  output {
    File out_stdout = stdout()
  }
}