version 1.0

task Py27 {
  input {
    Boolean? treat_row_stdin
    Boolean? treat_list_stdin
    String? run_code_before_expression
    String? run_code_after_expression
    Boolean? v
    String expression
  }
  command <<<
    py2_7 \
      ~{expression} \
      ~{if (treat_row_stdin) then "-x" else ""} \
      ~{if (treat_list_stdin) then "-l" else ""} \
      ~{if defined(run_code_before_expression) then ("-c " +  '"' + run_code_before_expression + '"') else ""} \
      ~{if defined(run_code_after_expression) then ("-C " +  '"' + run_code_after_expression + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    treat_row_stdin: "treat each row of stdin as x"
    treat_list_stdin: "treat list of stdin as l"
    run_code_before_expression: "run code before expression"
    run_code_after_expression: "run code after expression"
    v: ""
    expression: "e.g. py '2 ** 32'"
  }
  output {
    File out_stdout = stdout()
  }
}