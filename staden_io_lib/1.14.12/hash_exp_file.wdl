version 1.0

task HashExpFile {
  input {
    String hash_exp
    String exp_file_ball
  }
  command <<<
    hash_exp file \
      ~{hash_exp} \
      ~{exp_file_ball}
  >>>
  parameter_meta {
    hash_exp: ""
    exp_file_ball: ""
  }
}