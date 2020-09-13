version 1.0

task ExtractUnmapped {
  command <<<
    extractUnmapped
  >>>
  output {
    File out_stdout = stdout()
  }
}