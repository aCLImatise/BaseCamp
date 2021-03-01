version 1.0

task Go2godbPrestore {
  command <<<
    go2godb_prestore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}