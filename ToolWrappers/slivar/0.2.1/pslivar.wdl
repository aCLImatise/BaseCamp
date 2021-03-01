version 1.0

task Pslivar {
  command <<<
    pslivar
  >>>
  runtime {
    docker: "quay.io/biocontainers/slivar:0.2.1--hecda079_0"
  }
  output {
    File out_stdout = stdout()
  }
}