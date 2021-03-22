version 1.0

task IndexTar {
  input {
    Boolean? d
    String tar_file
  }
  command <<<
    index_tar \
      ~{tar_file} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    d: ""
    tar_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}