version 1.0

task HashExp {
  input {
    String exp_file_ball
  }
  command <<<
    hash_exp \
      ~{exp_file_ball}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    exp_file_ball: ""
  }
  output {
    File out_stdout = stdout()
  }
}