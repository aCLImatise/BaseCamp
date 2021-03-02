version 1.0

task Maker2jbrowse {
  command <<<
    maker2jbrowse
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}