version 1.0

task Makechimeras.sh {
  input {
    String in
  }
  command <<<
    makechimeras.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}