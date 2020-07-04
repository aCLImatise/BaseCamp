version 1.0

task Bbrealign.sh {
  input {
    String in
  }
  command <<<
    bbrealign.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}