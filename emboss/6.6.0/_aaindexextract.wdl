version 1.0

task Aaindexextract {
  command <<<
    _aaindexextract
  >>>
  output {
    File out_stdout = stdout()
  }
}