version 1.0

task MaxQuantGuiexe {
  command <<<
    MaxQuantGui_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}