version 1.0

task Fastatranslate {
  command <<<
    fastatranslate
  >>>
  output {
    File out_stdout = stdout()
  }
}