version 1.0

task KtImportDiskUsage {
  command <<<
    ktImportDiskUsage
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}