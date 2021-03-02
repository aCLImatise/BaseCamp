version 1.0

task CoolerCp {
  input {
    Boolean? overwrite
    String src_uri
    String dst_uri
  }
  command <<<
    cooler cp \
      ~{src_uri} \
      ~{dst_uri} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0"
  }
  parameter_meta {
    overwrite: "Truncate and replace destination file if it already exists."
    src_uri: ""
    dst_uri: ""
  }
  output {
    File out_stdout = stdout()
  }
}