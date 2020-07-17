version 1.0

task Filtersubs.sh {
  input {
    String in
  }
  command <<<
    filtersubs.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}