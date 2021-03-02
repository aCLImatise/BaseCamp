version 1.0

task BaseLibdll {
  command <<<
    BaseLib_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}