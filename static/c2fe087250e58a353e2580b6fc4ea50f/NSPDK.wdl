version 1.0

task NSPDK {
  command <<<
    NSPDK
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}