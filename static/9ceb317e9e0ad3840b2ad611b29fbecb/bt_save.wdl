version 1.0

task Btsave {
  command <<<
    bt_save
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}