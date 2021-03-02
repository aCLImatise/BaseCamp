version 1.0

task MaxQuantLibdll {
  command <<<
    MaxQuantLib_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}