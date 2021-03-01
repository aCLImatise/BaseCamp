version 1.0

task ExtractUnmapped {
  command <<<
    extractUnmapped
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}