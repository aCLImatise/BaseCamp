version 1.0

task Ppi2html {
  command <<<
    ppi2html
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}