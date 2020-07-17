version 1.0

task Momo {
  input {
    String algorithm
    String arguments
  }
  command <<<
    momo \
      ~{algorithm} \
      ~{arguments}
  >>>
  parameter_meta {
    algorithm: ""
    arguments: ""
  }
}