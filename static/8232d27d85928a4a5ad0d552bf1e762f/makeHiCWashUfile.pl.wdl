version 1.0

task MakeHiCWashUfilepl {
  command <<<
    makeHiCWashUfile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}