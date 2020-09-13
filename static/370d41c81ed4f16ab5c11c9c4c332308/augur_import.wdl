version 1.0

task AugurImport {
  command <<<
    augur import
  >>>
  output {
    File out_stdout = stdout()
  }
}