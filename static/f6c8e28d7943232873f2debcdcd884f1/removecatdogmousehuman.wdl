version 1.0

task Removecatdogmousehuman.sh {
  input {
    String in
  }
  command <<<
    removecatdogmousehuman.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}