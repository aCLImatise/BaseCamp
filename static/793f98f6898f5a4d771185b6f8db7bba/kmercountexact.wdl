version 1.0

task Kmercountexact.sh {
  input {
    String in
  }
  command <<<
    kmercountexact.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}