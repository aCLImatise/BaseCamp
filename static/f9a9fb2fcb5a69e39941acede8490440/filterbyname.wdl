version 1.0

task Filterbyname.sh {
  input {
    String in
  }
  command <<<
    filterbyname.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}