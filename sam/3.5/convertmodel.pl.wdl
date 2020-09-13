version 1.0

task Convertmodelpl {
  command <<<
    convertmodel_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}