version 1.0

task ExtractQual {
  input {
    Boolean? r
  }
  command <<<
    extract_qual \
      ~{if (r) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}