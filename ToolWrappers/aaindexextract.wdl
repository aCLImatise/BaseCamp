version 1.0

task Aaindexextract {
  command <<<
    aaindexextract
  >>>
  output {
    File out_stdout = stdout()
  }
}