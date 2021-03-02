version 1.0

task NEWSrst {
  command <<<
    NEWS_rst
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}