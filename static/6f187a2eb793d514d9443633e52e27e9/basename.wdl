version 1.0

task Basename {
  input {
    Boolean? multiple
    String? remove_trailing_suffix
    Boolean? end_output_line
    String name
    String? var_4
  }
  command <<<
    basename \
      ~{name} \
      ~{var_4} \
      ~{true="--multiple" false="" multiple} \
      ~{if defined(remove_trailing_suffix) then ("--suffix " +  '"' + remove_trailing_suffix + '"') else ""} \
      ~{true="--zero" false="" end_output_line}
  >>>
  parameter_meta {
    multiple: "support multiple arguments and treat each as a NAME"
    remove_trailing_suffix: "remove a trailing SUFFIX; implies -a"
    end_output_line: "end each output line with NUL, not newline"
    name: ""
    var_4: ""
  }
}