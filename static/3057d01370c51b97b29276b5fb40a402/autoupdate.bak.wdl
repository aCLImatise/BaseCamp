version 1.0

task Autoupdatebak {
  command <<<
    autoupdate_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}