version 1.0

task CruxAssignconfidenceIncluded {
  input {
    String crux
    String assign_confidence
    String target_input
  }
  command <<<
    crux assign_confidence included_ \
      ~{crux} \
      ~{assign_confidence} \
      ~{target_input}
  >>>
  parameter_meta {
    crux: ""
    assign_confidence: ""
    target_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}