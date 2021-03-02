version 1.0

task Btlink {
  command <<<
    bt_link
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}