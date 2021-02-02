version 1.0

task HYPHYMPI {
  input {
    Boolean? calculator_mode_causes
    Boolean? debug_mode_causes
    Boolean? interactive_mode_causes
    Boolean? postprocessor_mode_drops
    Boolean? write_diagnostic_messages
    String? keyword
    Boolean? h
  }
  command <<<
    HYPHYMPI \
      ~{if (calculator_mode_causes) then "-c" else ""} \
      ~{if (debug_mode_causes) then "-d" else ""} \
      ~{if (interactive_mode_causes) then "-i" else ""} \
      ~{if (postprocessor_mode_drops) then "-p" else ""} \
      ~{if (write_diagnostic_messages) then "-m" else ""} \
      ~{if defined(keyword) then ("--keyword " +  '"' + keyword + '"') else ""} \
      ~{if (h) then "-h" else ""}
  >>>
  parameter_meta {
    calculator_mode_causes: "calculator mode; causes HyPhy to drop into an expression evaluation until 'exit' is typed"
    debug_mode_causes: "debug mode; causes HyPhy to drop into an expression evaluation mode upon script error"
    interactive_mode_causes: "interactive mode; causes HyPhy to always prompt the user for analysis options, even when defaults are available"
    postprocessor_mode_drops: "postprocessor mode; drops HyPhy into an interactive mode where general post-processing scripts can be selected\\nupon analysis completion"
    write_diagnostic_messages: "write diagnostic messages to messages.log"
    keyword: "will be passed to the analysis (which uses KeywordArgument directives)\\nmultiple values for the same keywords are treated as an array of values for multiple selectors"
    h: ""
  }
  output {
    File out_stdout = stdout()
  }
}