version 1.0

task MgfFormatter {
  input {
    Boolean itItRaqFilter
    Boolean mgfMgfFormat
    Boolean noNoSplitMultipleChargeStates
    Boolean outputOutput
  }
  command <<<
    mgf-formatter \
      ~{true="--itraq_filter" false="" itItRaqFilter} \
      ~{true="--mgf_format" false="" mgfMgfFormat} \
      ~{true="--no_split_multiple_charge_states" false="" noNoSplitMultipleChargeStates} \
      ~{true="--output" false="" outputOutput}
  >>>
}