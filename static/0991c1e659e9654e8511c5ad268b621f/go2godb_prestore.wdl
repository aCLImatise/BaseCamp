version 1.0

task Go2godbPrestore {
  command <<<
    go2godb_prestore
  >>>
  output {
    File out_stdout = stdout()
  }
}