version 1.0

task DupMasker {
  command <<<
    DupMasker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}