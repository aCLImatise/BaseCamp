version 1.0

task Featreport {
  command <<<
    featreport
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}