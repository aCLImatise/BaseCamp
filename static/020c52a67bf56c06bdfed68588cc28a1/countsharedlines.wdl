version 1.0

task Countsharedlines.sh {
  input {
    String in_one
  }
  command <<<
    countsharedlines.sh \
      ~{in_one}
  >>>
  parameter_meta {
    in_one: ""
  }
}