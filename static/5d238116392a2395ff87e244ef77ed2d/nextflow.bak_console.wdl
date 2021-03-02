version 1.0

task NextflowbakConsole {
  input {
    File? filename
  }
  command <<<
    nextflow_bak console \
      ~{filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextflow:20.10.0--hecda079_0"
  }
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}