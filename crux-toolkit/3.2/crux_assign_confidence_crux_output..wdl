version 1.0

task CruxAssignconfidenceCruxoutput {
  input {
    String crux
    String assign_confidence
    String target_input
  }
  command <<<
    crux assign_confidence crux_output_ \
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