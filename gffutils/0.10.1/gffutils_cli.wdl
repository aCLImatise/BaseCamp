version 1.0

task Gffutilscli {
  command <<<
    gffutils_cli
  >>>
  output {
    File out_stdout = stdout()
  }
}