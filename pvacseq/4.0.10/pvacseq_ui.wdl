version 1.0

task Pvacsequi {
  command <<<
    pvacseq_ui
  >>>
  output {
    File out_stdout = stdout()
  }
}