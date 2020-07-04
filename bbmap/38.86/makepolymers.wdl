version 1.0

task Makepolymers.sh {
  input {
    String out
  }
  command <<<
    makepolymers.sh \
      ~{out}
  >>>
  parameter_meta {
    out: ""
  }
}