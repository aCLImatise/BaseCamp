version 1.0

task Convertrecfilepl {
  command <<<
    convertrecfile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}