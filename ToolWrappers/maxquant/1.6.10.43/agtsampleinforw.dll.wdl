version 1.0

task Agtsampleinforwdll {
  command <<<
    agtsampleinforw_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}