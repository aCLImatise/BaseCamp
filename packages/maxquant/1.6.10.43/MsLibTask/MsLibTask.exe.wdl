version 1.0

task MsLibTaskexe {
  command <<<
    MsLibTask_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}