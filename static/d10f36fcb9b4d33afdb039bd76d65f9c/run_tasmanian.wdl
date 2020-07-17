version 1.0

task RunTasmanian {
  input {
    Boolean? fragment_length
    Boolean? output_prefix
    Boolean? confidence
    Boolean? debug
  }
  command <<<
    run_tasmanian \
      ~{true="--fragment-length" false="" fragment_length} \
      ~{true="--output-prefix" false="" output_prefix} \
      ~{true="--confidence" false="" confidence} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    fragment_length: "(use fragments withi these lengths ONLY)"
    output_prefix: "(use this prefix for the output and logging files)"
    confidence: "(number of bases in the complement region of the read) "
    debug: "(create a log file) "
  }
}