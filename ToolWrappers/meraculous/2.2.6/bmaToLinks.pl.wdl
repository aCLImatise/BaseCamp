version 1.0

task BmaToLinkspl {
  command <<<
    bmaToLinks_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}