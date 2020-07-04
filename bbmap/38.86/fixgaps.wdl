version 1.0

task Fixgaps.sh {
  input {
    String in
  }
  command <<<
    fixgaps.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}