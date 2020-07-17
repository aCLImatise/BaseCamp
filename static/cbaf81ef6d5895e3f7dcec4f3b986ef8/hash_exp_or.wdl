version 1.0

task HashExpOr {
  input {
    String hash_exp
    String exp_file_ball
  }
  command <<<
    hash_exp or \
      ~{hash_exp} \
      ~{exp_file_ball}
  >>>
  parameter_meta {
    hash_exp: ""
    exp_file_ball: ""
  }
}