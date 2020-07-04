version 1.0

task Reducesilva.sh {
  input {
    String in
  }
  command <<<
    reducesilva.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}