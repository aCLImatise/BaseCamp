version 1.0

task ExtractSeq {
  input {
    Boolean? r
  }
  command <<<
    extract_seq \
      ~{if (r) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}