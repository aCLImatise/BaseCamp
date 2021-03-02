version 1.0

task MasterSplitter {
  command <<<
    masterSplitter
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}