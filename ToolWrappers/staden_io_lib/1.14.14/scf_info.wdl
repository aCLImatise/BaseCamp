version 1.0

task ScfInfo {
  input {
    String scf_filename
  }
  command <<<
    scf_info \
      ~{scf_filename}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    scf_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}