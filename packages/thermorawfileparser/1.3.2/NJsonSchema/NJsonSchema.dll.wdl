version 1.0

task NJsonSchemadll {
  command <<<
    NJsonSchema_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}