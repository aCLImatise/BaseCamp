version 1.0

task Filterpl {
  command <<<
    Filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}