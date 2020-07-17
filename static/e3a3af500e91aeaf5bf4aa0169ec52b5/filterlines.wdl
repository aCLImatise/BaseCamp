version 1.0

task Filterlines.sh {
  input {
    String in
  }
  command <<<
    filterlines.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}