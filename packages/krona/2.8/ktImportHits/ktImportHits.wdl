version 1.0

task KtImportHits {
  command <<<
    ktImportHits
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}