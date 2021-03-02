version 1.0

task CoolerMv {
  input {
    Boolean? overwrite
    String src_uri
    String dst_uri
  }
  command <<<
    cooler mv \
      ~{src_uri} \
      ~{dst_uri} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "None"
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