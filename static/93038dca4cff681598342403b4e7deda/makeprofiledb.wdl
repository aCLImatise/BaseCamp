version 1.0

task Makeprofiledb {
  command <<<
    makeprofiledb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}