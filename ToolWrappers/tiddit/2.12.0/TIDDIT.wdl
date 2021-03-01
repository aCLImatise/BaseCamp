version 1.0

task TIDDIT {
  command <<<
    TIDDIT
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}