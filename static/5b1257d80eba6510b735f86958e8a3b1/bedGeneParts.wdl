version 1.0

task BedGeneParts {
  command <<<
    bedGeneParts
  >>>
  output {
    File out_stdout = stdout()
  }
}