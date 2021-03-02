version 1.0

task Masterhtml {
  command <<<
    master_html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}