version 1.0

task Libtensorflowdll {
  command <<<
    libtensorflow_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}