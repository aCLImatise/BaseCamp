version 1.0

task AugurExport {
  command <<<
    augur export
  >>>
  output {
    File out_stdout = stdout()
  }
}