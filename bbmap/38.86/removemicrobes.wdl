version 1.0

task Removemicrobes.sh {
  input {
    String in
  }
  command <<<
    removemicrobes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}