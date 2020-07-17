version 1.0

task Randomgenome.sh {
  input {
    String len
  }
  command <<<
    randomgenome.sh \
      ~{len}
  >>>
  parameter_meta {
    len: ""
  }
}