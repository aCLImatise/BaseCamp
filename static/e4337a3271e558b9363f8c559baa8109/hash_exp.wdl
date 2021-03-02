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
    docker: "None"
  }
  parameter_meta {
    exp_file_ball: ""
  }
  output {
    File out_stdout = stdout()
  }
}