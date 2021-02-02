version 1.0

task ChakinExport {
  command <<<
    chakin export
  >>>
  output {
    File out_stdout = stdout()
  }
}