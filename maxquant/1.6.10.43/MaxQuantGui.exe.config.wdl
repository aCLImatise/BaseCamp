version 1.0

task MaxQuantGuiexeconfig {
  command <<<
    MaxQuantGui_exe_config
  >>>
  output {
    File out_stdout = stdout()
  }
}