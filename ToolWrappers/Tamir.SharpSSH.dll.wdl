version 1.0

task TamirSharpSSHdll {
  command <<<
    Tamir_SharpSSH_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}