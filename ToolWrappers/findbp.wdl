version 1.0

task Findbp {
  command <<<
    findbp
  >>>
  output {
    File out_stdout = stdout()
  }
}