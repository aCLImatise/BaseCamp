version 1.0

task TamirSharpSSHdll {
  command <<<
    Tamir_SharpSSH_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}