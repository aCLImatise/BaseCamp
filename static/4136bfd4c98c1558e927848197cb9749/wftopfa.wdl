version 1.0

task Wftopfa {
  command <<<
    wftopfa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}