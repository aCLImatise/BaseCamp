version 1.0

task Consect.sh {
  input {
    String in
  }
  command <<<
    consect.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}