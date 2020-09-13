version 1.0

task Manualmd {
  command <<<
    manual_md
  >>>
  output {
    File out_stdout = stdout()
  }
}