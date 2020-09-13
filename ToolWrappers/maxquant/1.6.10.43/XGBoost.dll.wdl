version 1.0

task XGBoostdll {
  command <<<
    XGBoost_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}