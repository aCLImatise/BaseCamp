version 1.0

task Obspectrophore {
  command <<<
    obspectrophore
  >>>
  output {
    File out_stdout = stdout()
  }
}