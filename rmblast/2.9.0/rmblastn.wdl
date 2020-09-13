version 1.0

task Rmblastn {
  command <<<
    rmblastn
  >>>
  output {
    File out_stdout = stdout()
  }
}