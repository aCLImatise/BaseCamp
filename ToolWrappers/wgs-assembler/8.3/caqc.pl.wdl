version 1.0

task Caqcpl {
  command <<<
    caqc_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}