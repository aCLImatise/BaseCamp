version 1.0

task Addssu.sh {
  input {
    String in
  }
  command <<<
    addssu.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}