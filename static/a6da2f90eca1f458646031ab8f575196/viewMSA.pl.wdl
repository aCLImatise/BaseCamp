version 1.0

task ViewMSApl {
  command <<<
    viewMSA_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}