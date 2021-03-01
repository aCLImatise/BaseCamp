version 1.0

task MakeBinaryFilepl {
  command <<<
    makeBinaryFile_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}