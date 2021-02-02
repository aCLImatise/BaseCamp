version 1.0

task Expr {
  input {
    String expression
  }
  command <<<
    expr \
      ~{expression}
  >>>
  parameter_meta {
    expression: ""
  }
  output {
    File out_stdout = stdout()
  }
}