version 1.0

task Httpcfg {
  command <<<
    httpcfg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}