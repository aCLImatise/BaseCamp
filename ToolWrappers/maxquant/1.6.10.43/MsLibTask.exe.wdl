version 1.0

task MsLibTaskexe {
  command <<<
    MsLibTask_exe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}