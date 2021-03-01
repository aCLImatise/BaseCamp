version 1.0

task Encguess {
  input {
    Boolean? specify_list_test
    Boolean? output_list_param
    Boolean? suppress_display_unidentified
    String examples
    String var_4
    String? var_5
  }
  command <<<
    encguess \
      ~{examples} \
      ~{var_4} \
      ~{var_5} \
      ~{if (specify_list_test) then "-s" else ""} \
      ~{if (output_list_param) then "-S" else ""} \
      ~{if (suppress_display_unidentified) then "-u" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_list_test: "specify a list of \\\"suspect encoding types\\\" to test, seperated by\\neither \\\":\\\" or \\\",\\\""
    output_list_param: "output a list of all acceptable encoding types that can be used with\\nthe -s param"
    suppress_display_unidentified: "suppress display of unidentified types"
    examples: ""
    var_4: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
  }
}