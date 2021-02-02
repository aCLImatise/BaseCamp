version 1.0

task Agtsampleinforwdll {
  command <<<
    agtsampleinforw_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}