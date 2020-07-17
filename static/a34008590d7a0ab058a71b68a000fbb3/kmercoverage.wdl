version 1.0

task Kmercoverage.sh {
  input {
    String in
  }
  command <<<
    kmercoverage.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}