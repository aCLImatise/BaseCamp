version 1.0

task Hyphy {
  input {
    Boolean? calculator_mode_causes
    Boolean? debug_mode_causes
    Boolean? interactive_mode_causes
    Boolean? postprocessor_mode_drops
    Boolean? write_diagnostic_messages
    String? keyword
    Boolean? help
  }
  command <<<
    hyphy \
      ~{true="-c" false="" calculator_mode_causes} \
      ~{true="-d" false="" debug_mode_causes} \
      ~{true="-i" false="" interactive_mode_causes} \
      ~{true="-p" false="" postprocessor_mode_drops} \
      ~{true="-m" false="" write_diagnostic_messages} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{true="--help" false="" help}
  >>>
  parameter_meta {
    calculator_mode_causes: "calculator mode; causes HyPhy to drop into an expression evaluation until 'exit' is typed"
    debug_mode_causes: "debug mode; causes HyPhy to drop into an expression evaluation mode upon script error"
    interactive_mode_causes: "interactive mode; causes HyPhy to always prompt the user for analysis options, even when defaults are available"
    postprocessor_mode_drops: "postprocessor mode; drops HyPhy into an interactive mode where general post-processing scripts can be selected upon analysis completion"
    write_diagnostic_messages: "write diagnostic messages to messages.log"
    keyword: "will be passed to the analysis (which uses KeywordArgument directives) multiple values for the same keywords are treated as an array of values for multiple selectors"
    help: ""
  }
}