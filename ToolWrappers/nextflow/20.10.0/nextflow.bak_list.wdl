version 1.0

task NextflowbakList {
  input {
    String list
  }
  command <<<
    nextflow_bak list \
      ~{list}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextflow:20.10.0--hecda079_0"
  }
  parameter_meta {
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}