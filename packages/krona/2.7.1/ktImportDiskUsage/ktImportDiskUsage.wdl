version 1.0

task KtImportDiskUsage {
  command <<<
    ktImportDiskUsage
  >>>
  output {
    File out_stdout = stdout()
  }
}