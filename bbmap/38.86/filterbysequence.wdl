version 1.0

task Filterbysequence.sh {
  input {
    String in
  }
  command <<<
    filterbysequence.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}