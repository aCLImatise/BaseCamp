version 1.0

task AppendSff {
  input {
    String add_me_dots_ff
  }
  command <<<
    append_sff \
      ~{add_me_dots_ff}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    add_me_dots_ff: ""
  }
  output {
    File out_stdout = stdout()
  }
}