version 1.0

task Nonpareil {
  command <<<
    nonpareil
  >>>
  output {
    File out_stdout = stdout()
  }
}