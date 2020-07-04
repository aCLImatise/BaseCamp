version 1.0

task CruxAssignConfidence {
  input {
    String target_input
  }
  command <<<
    crux assign-confidence \
      ~{target_input}
  >>>
  parameter_meta {
    target_input: ""
  }
}