version 1.0

task BatchMakeTagDirectorypl {
  command <<<
    batchMakeTagDirectory_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}