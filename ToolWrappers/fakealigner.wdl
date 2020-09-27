version 1.0

task Fakealigner {
  command <<<
    fakealigner
  >>>
  output {
    File out_stdout = stdout()
  }
}