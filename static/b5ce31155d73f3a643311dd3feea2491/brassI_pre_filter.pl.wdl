version 1.0

task BrassIPreFilterpl {
  command <<<
    brassI_pre_filter_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}