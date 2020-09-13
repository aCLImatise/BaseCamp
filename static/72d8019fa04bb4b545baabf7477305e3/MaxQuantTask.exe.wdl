version 1.0

task MaxQuantTaskexe {
  command <<<
    MaxQuantTask_exe
  >>>
  output {
    File out_stdout = stdout()
  }
}