version 1.0

task Removehuman.sh {
  input {
    String in
  }
  command <<<
    removehuman.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}