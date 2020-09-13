version 1.0

task Mglobspectrophore {
  command <<<
    mglobspectrophore
  >>>
  output {
    File out_stdout = stdout()
  }
}