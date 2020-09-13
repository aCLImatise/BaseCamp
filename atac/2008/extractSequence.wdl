version 1.0

task ExtractSequence {
  command <<<
    extractSequence
  >>>
  output {
    File out_stdout = stdout()
  }
}