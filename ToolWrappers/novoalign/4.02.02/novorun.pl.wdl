version 1.0

task Novorunpl {
  command <<<
    novorun_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}