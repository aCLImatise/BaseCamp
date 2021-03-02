version 1.0

task XGBoostdll {
  command <<<
    XGBoost_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}