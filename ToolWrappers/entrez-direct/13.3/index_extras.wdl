version 1.0

task Indexextras {
  command <<<
    index_extras
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}