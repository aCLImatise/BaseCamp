version 1.0

task Dollop {
  command <<<
    dollop
  >>>
  output {
    File out_stdout = stdout()
  }
}