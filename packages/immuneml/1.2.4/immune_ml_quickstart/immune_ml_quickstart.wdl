version 1.0

task Immunemlquickstart {
  command <<<
    immune_ml_quickstart
  >>>
  runtime {
    docker: "quay.io/biocontainers/immuneml:1.2.4--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}