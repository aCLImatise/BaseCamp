version 1.0

task CruxAssignconfidenceDecoy_ {
  input {
    String crux
    String assign_confidence
    String target_input
  }
  command <<<
    crux assign_confidence decoy__ \
      ~{crux} \
      ~{assign_confidence} \
      ~{target_input}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    crux: ""
    assign_confidence: ""
    target_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}