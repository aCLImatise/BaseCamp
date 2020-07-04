version 1.0

task Filterbytile.sh {
  input {
    String in
  }
  command <<<
    filterbytile.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}