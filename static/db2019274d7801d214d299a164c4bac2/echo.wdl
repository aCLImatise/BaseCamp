version 1.0

task Echo {
  input {
    Boolean? output_trailing_newline
    Boolean? enable_interpretation_backslash
    Boolean? disable_interpretation_backslash
    String? short_option
  }
  command <<<
    echo \
      ~{short_option} \
      ~{if (output_trailing_newline) then "-n" else ""} \
      ~{if (enable_interpretation_backslash) then "-e" else ""} \
      ~{if (disable_interpretation_backslash) then "-E" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_trailing_newline: "do not output the trailing newline"
    enable_interpretation_backslash: "enable interpretation of backslash escapes"
    disable_interpretation_backslash: "disable interpretation of backslash escapes (default)"
    short_option: ""
  }
  output {
    File out_stdout = stdout()
  }
}