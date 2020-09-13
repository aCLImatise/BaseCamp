version 1.0

task Mgfformatter {
  input {
    Boolean? it_raq_filter
    Boolean? mgf_format
    Boolean? no_split_multiple_charge_states
    Boolean? var_output
    String main_class
    String var_input
  }
  command <<<
    mgf_formatter \
      ~{main_class} \
      ~{var_input} \
      ~{if (it_raq_filter) then "--itraq_filter" else ""} \
      ~{if (mgf_format) then "--mgf_format" else ""} \
      ~{if (no_split_multiple_charge_states) then "--no_split_multiple_charge_states" else ""} \
      ~{if (var_output) then "--output" else ""}
  >>>
  parameter_meta {
    it_raq_filter: "Default: false"
    mgf_format: "Default: DEFAULT"
    no_split_multiple_charge_states: "Default: false"
    var_output: "Output"
    main_class: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}