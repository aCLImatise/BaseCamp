version 1.0

task Blacklist {
  command <<<
    Blacklist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}