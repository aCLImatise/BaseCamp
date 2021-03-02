version 1.0

task FilterAltpl {
  command <<<
    filter_alt_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}