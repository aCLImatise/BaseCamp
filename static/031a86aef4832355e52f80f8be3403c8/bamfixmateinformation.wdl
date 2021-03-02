version 1.0

task Bamfixmateinformation {
  command <<<
    bamfixmateinformation
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}