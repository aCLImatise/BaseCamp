version 1.0

task Hostid {
  command <<<
    hostid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}