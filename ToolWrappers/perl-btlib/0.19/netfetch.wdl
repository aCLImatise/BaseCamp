version 1.0

task Netfetch {
  command <<<
    netfetch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}