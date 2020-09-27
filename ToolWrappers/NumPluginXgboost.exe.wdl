version 1.0

task NumPluginXgboostexe {
  command <<<
    NumPluginXgboost_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}