version 1.0

task BamExtractor {
  command <<<
    BamExtractor
  >>>
  output {
    File out_stdout = stdout()
  }
}