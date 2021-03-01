version 1.0

task Igblastn {
  command <<<
    igblastn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}