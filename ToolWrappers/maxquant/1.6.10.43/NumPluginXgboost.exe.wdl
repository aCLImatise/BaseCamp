version 1.0

task NumPluginXgboostexe {
  command <<<
    NumPluginXgboost_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}