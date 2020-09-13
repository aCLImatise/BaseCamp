version 1.0

task Coverm {
  command <<<
    coverm
  >>>
  output {
    File out_stdout = stdout()
  }
}