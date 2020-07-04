version 1.0

task Filtersam.sh {
  input {
    String in
  }
  command <<<
    filtersam.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}