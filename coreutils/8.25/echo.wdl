version 1.0

task Echo {
  input {
    String? output_trailing_newline
    Boolean? enable_interpretation_backslash
    Boolean? disable_interpretation_backslash
    String? short_option
  }
  command <<<
    echo \
      ~{short_option} \
      ~{if defined(output_trailing_newline) then ("-n " +  '"' + output_trailing_newline + '"') else ""} \
      ~{true="-e" false="" enable_interpretation_backslash} \
      ~{true="-E" false="" disable_interpretation_backslash}
  >>>
  parameter_meta {
    output_trailing_newline: "not output the trailing newline"
    enable_interpretation_backslash: "enable interpretation of backslash escapes"
    disable_interpretation_backslash: "disable interpretation of backslash escapes (default)"
    short_option: ""
  }
}