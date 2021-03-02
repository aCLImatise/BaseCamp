version 1.0

task KtGetLibPath {
  command <<<
    ktGetLibPath
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}