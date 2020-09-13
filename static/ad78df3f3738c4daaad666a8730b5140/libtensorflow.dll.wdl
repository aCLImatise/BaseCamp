version 1.0

task Libtensorflowdll {
  command <<<
    libtensorflow_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}