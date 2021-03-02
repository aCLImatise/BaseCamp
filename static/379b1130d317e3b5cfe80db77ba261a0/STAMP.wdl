version 1.0

task STAMP {
  command <<<
    STAMP
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}