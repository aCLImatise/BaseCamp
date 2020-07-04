version 1.0

task Splitbytaxa.sh {
  input {
    String in
  }
  command <<<
    splitbytaxa.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}