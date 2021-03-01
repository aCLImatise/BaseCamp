version 1.0

task MsLibdll {
  command <<<
    MsLib_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}