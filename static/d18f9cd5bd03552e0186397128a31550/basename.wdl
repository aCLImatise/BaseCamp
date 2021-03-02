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
      ~{if (multiple) then "--multiple" else ""} \
      ~{if defined(remove_trailing_suffix) then ("--suffix " +  '"' + remove_trailing_suffix + '"') else ""} \
      ~{if (end_output_line) then "--zero" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    multiple: "support multiple arguments and treat each as a NAME"
    remove_trailing_suffix: "remove a trailing SUFFIX; implies -a"
    end_output_line: "end each output line with NUL, not newline"
    name: ""
    var_4: ""
  }
  output {
    File out_stdout = stdout()
  }
}