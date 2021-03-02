version 1.0

task Modules {
  command <<<
    modules
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  output {
    File out_stdout = stdout()
  }
}