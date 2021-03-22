version 1.0

task Srf2fasta {
  input {
    Boolean? c
    String archive_name
  }
  command <<<
    srf2fasta \
      ~{archive_name} \
      ~{if (c) then "-C" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    c: ""
    archive_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}