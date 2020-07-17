version 1.0

task Platypus {
  input {
    String var_as
    String follows
  }
  command <<<
    platypus \
      ~{var_as} \
      ~{follows}
  >>>
  parameter_meta {
    var_as: ""
    follows: ""
  }
}