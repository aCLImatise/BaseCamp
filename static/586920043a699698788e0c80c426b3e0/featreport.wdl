version 1.0

task Featreport {
  command <<<
    featreport
  >>>
  output {
    File out_stdout = stdout()
  }
}