version 1.0

task MaxQuantTaskexe {
  command <<<
    MaxQuantTask_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}