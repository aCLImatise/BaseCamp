version 1.0

task Runrccmd {
  command <<<
    runrc_cmd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}