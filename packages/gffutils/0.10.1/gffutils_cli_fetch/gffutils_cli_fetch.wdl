version 1.0

task GffutilscliFetch {
  command <<<
    gffutils_cli fetch
  >>>
  output {
    File out_stdout = stdout()
  }
}