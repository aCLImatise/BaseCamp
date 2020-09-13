version 1.0

task MaxQuantGuiexe {
  command <<<
    MaxQuantGui_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}