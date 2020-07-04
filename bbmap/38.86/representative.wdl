version 1.0

task Representative.sh {
  input {
    String in
  }
  command <<<
    representative.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}