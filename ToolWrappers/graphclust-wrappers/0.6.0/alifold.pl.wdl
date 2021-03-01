version 1.0

task Alifoldpl {
  command <<<
    alifold_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}