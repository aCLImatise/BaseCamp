version 1.0

task Cygdb {
  command <<<
    cygdb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}