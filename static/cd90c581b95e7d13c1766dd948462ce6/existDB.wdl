version 1.0

task ExistDB {
  command <<<
    existDB
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}