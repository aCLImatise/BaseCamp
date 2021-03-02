version 1.0

task ExtractCoding {
  command <<<
    extractCoding
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}