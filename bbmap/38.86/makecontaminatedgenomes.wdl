version 1.0

task Makecontaminatedgenomes.sh {
  input {
    String in
  }
  command <<<
    makecontaminatedgenomes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}