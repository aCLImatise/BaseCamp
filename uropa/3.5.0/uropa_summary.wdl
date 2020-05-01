version 1.0

task UropaSummary.R {
  input {
    Boolean finalFinalHits
    Boolean configConfig
    Boolean outputOutput
    Boolean allAllHits
    Boolean callCall
  }
  command <<<
    uropa_summary.R \
      ~{true="--finalhits" false="" finalFinalHits} \
      ~{true="--config" false="" configConfig} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--allhits" false="" allAllHits} \
      ~{true="--call" false="" callCall}
  >>>
}