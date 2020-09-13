version 1.0

task LibIdpSqlExtensionsso {
  command <<<
    libIdpSqlExtensions_so
  >>>
  output {
    File out_stdout = stdout()
  }
}