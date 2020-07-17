version 1.0

task Adjusthomopolymers.sh {
  input {
    String in
  }
  command <<<
    adjusthomopolymers.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}