version 1.0

task Pwatchermain {
  command <<<
    pwatcher_main
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}