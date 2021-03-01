version 1.0

task OeR {
  command <<<
    oe_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}