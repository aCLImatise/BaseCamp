version 1.0

task RecallConsensus {
  input {
    Boolean? bank
    Boolean? verbose
    Boolean? ambiguity
  }
  command <<<
    recallConsensus \
      ~{if (bank) then "-bank" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (ambiguity) then "-ambiguity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bank: "Bank where assembly is stored"
    verbose: "Be verbose"
    ambiguity: "Use Ambiguity Codes"
  }
  output {
    File out_stdout = stdout()
  }
}