version 1.0

task Ebisearch {
  command <<<
    ebisearch
  >>>
  output {
    File out_stdout = stdout()
  }
}