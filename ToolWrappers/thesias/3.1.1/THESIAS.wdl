version 1.0

task THESIAS {
  command <<<
    THESIAS
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}