version 1.0

task Bufetbin {
  command <<<
    bufet_bin
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}