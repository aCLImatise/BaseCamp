version 1.0

task Cleanmepl {
  command <<<
    cleanme_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}