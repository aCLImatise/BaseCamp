version 1.0

task MaxQuantCmdexe {
  command <<<
    MaxQuantCmd_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}