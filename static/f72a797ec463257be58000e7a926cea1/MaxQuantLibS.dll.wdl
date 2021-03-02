version 1.0

task MaxQuantLibSdll {
  command <<<
    MaxQuantLibS_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}