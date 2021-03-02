version 1.0

task CombineFile {
  command <<<
    combineFile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}