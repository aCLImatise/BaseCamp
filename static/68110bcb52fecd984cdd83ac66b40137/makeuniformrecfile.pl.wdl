version 1.0

task Makeuniformrecfilepl {
  command <<<
    makeuniformrecfile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}