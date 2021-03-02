version 1.0

task Scandepspl {
  command <<<
    scandeps_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}