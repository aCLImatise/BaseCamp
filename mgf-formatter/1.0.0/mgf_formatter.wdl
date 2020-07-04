version 1.0

task MgfFormatter {
  input {
    Boolean? it_raq_filter
    Boolean? mgf_format
    Boolean? no_split_multiple_charge_states
    Boolean? var_output
    String main_class
    String var_input
  }
  command <<<
    mgf-formatter \
      ~{main_class} \
      ~{var_input} \
      ~{true="--itraq_filter" false="" it_raq_filter} \
      ~{true="--mgf_format" false="" mgf_format} \
      ~{true="--no_split_multiple_charge_states" false="" no_split_multiple_charge_states} \
      ~{true="--output" false="" var_output}
  >>>
  parameter_meta {
    it_raq_filter: "Default: false"
    mgf_format: "Default: DEFAULT"
    no_split_multiple_charge_states: "Default: false"
    var_output: "Output"
    main_class: ""
    var_input: ""
  }
}