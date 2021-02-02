version 1.0

task MaxQuantCmdexe {
  command <<<
    MaxQuantCmd_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}