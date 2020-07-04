version 1.0

task Filterbycoverage.sh {
  input {
    String in
  }
  command <<<
    filterbycoverage.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}