version 1.0

task CramSize {
  input {
    File filename_dot_cram
  }
  command <<<
    cram_size \
      ~{filename_dot_cram}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    filename_dot_cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}