version 1.0

task Retree {
  command <<<
    retree
  >>>
  output {
    File out_stdout = stdout()
  }
}