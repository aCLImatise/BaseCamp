version 1.0

task CruxAssignconfidenceTdc {
  input {
    String crux
    String assign_confidence
    String target_input
  }
  command <<<
    crux assign_confidence tdc_ \
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