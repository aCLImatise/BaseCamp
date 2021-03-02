version 1.0

task Filterpl {
  command <<<
    filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}