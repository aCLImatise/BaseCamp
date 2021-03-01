version 1.0

task BaseTofdll {
  command <<<
    BaseTof_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}