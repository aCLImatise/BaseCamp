version 1.0

task GmtkOnline {
  command <<<
    gmtkOnline
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}