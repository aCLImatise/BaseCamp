version 1.0

task Btload {
  command <<<
    bt_load
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}