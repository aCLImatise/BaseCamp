version 1.0

task ChadoExport {
  command <<<
    chado export
  >>>
  output {
    File out_stdout = stdout()
  }
}