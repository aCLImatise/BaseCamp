version 1.0

task CramIndex {
  input {
    File filename_dot_cram
    File? filename_dot_cram_dot_cra_i
  }
  command <<<
    cram_index \
      ~{filename_dot_cram} \
      ~{filename_dot_cram_dot_cra_i}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    filename_dot_cram: ""
    filename_dot_cram_dot_cra_i: ""
  }
  output {
    File out_stdout = stdout()
  }
}