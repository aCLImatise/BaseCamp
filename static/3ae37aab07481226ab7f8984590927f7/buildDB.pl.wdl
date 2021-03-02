version 1.0

task BuildDBpl {
  command <<<
    buildDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}