version 1.0

task Fastareformat {
  command <<<
    fastareformat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}