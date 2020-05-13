version 1.0

task Seqdiff {
  input {
    Boolean aAOutput
    Boolean bBOutput
    Boolean cCOutput
    Boolean headersHeaders
    Boolean summarySummary
    Boolean verboseVerbose
  }
  command <<<
    seqdiff \
      ~{true="--a_output" false="" aAOutput} \
      ~{true="--b_output" false="" bBOutput} \
      ~{true="--c_output" false="" cCOutput} \
      ~{true="--headers" false="" headersHeaders} \
      ~{true="--summary" false="" summarySummary} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}