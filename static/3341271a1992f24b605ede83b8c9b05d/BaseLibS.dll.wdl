version 1.0

task BaseLibSdll {
  command <<<
    BaseLibS_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}