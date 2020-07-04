version 1.0

task ConsEntropy {
  input {
    String target_coverage
    String expected_length
  }
  command <<<
    consEntropy \
      ~{target_coverage} \
      ~{expected_length}
  >>>
  parameter_meta {
    target_coverage: ""
    expected_length: ""
  }
}