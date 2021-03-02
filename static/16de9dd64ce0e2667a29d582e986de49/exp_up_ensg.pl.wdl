version 1.0

task ExpUpEnsgpl {
  command <<<
    exp_up_ensg_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}