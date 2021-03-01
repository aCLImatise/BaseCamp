version 1.0

task SamMappl {
  command <<<
    samMap_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}