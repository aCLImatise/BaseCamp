version 1.0

task Py2.7 {
  input {
    Boolean? treat_row_stdin
    Boolean? treat_list_stdin
    String? run_code_before_expression
    String? run_code_after_expression
    Boolean? v
    String expression
  }
  command <<<
    py2.7 \
      ~{expression} \
      ~{true="-x" false="" treat_row_stdin} \
      ~{true="-l" false="" treat_list_stdin} \
      ~{if defined(run_code_before_expression) then ("-c " +  '"' + run_code_before_expression + '"') else ""} \
      ~{if defined(run_code_after_expression) then ("-C " +  '"' + run_code_after_expression + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    treat_row_stdin: "treat each row of stdin as x"
    treat_list_stdin: "treat list of stdin as l"
    run_code_before_expression: "run code before expression"
    run_code_after_expression: "run code after expression"
    v: ""
    expression: "e.g. py '2 ** 32'"
  }
}