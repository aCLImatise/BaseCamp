version 1.0

task Ibrowse {
  command <<<
    ibrowse
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}