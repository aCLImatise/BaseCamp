version 1.0

task ExtractCoding {
  command <<<
    extractCoding
  >>>
  output {
    File out_stdout = stdout()
  }
}