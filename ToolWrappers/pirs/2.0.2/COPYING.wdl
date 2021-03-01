version 1.0

task COPYING {
  command <<<
    COPYING
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}