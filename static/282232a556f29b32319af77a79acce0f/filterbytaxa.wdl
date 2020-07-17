version 1.0

task Filterbytaxa.sh {
  input {
    String in
  }
  command <<<
    filterbytaxa.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}