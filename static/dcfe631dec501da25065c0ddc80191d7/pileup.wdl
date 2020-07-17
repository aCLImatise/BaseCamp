version 1.0

task Pileup.sh {
  input {
    String in
  }
  command <<<
    pileup.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}