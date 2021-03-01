version 1.0

task Addtitpl {
  command <<<
    addtit_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}