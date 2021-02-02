version 1.0

task Smashpp {
  command <<<
    smashpp
  >>>
  output {
    File out_stdout = stdout()
  }
}