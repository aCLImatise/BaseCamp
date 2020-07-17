version 1.0

task Filtersilva.sh {
  input {
    String in
  }
  command <<<
    filtersilva.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}