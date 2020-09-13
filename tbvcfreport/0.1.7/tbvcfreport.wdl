version 1.0

task Tbvcfreport {
  command <<<
    tbvcfreport
  >>>
  output {
    File out_stdout = stdout()
  }
}