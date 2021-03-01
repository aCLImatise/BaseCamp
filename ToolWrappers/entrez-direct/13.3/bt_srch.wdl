version 1.0

task Btsrch {
  command <<<
    bt_srch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}