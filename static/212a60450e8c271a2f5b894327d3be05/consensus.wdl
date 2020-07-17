version 1.0

task Consensus.sh {
  input {
    String in
  }
  command <<<
    consensus.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}