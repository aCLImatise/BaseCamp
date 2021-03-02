version 1.0

task ChromImpute {
  command <<<
    ChromImpute
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromimpute:1.0.3--h1341992_0"
  }
  output {
    File out_stdout = stdout()
  }
}