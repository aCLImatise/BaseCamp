version 1.0

task Arvnormalize {
  input {
    File? extract
    Boolean? strip
  }
  command <<<
    arv_normalize \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if (strip) then "--strip" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.1--py_0"
  }
  parameter_meta {
    extract: "The file to extract from the input manifest"
    strip: "Strip authorization tokens"
  }
  output {
    File out_stdout = stdout()
  }
}