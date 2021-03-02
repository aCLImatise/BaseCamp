version 1.0

task DBinfopl {
  command <<<
    DBinfo_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}