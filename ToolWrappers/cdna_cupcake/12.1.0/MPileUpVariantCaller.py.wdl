version 1.0

task MPileUpVariantCallerpy {
  command <<<
    MPileUpVariantCaller_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}