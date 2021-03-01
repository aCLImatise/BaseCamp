version 1.0

task Convertmodelpl {
  command <<<
    convertmodel_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}