version 1.0

task MaxQuantGuiexeconfig {
  command <<<
    MaxQuantGui_exe_config
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}