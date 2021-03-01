version 1.0

task Panoctpl {
  command <<<
    panoct_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}