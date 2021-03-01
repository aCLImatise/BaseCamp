version 1.0

task Bugzscout {
  command <<<
    bugzscout
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}