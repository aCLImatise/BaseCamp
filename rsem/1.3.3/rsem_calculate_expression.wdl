version 1.0

task Rsemcalculateexpression {
  command <<<
    rsem_calculate_expression
  >>>
  output {
    File out_stdout = stdout()
  }
}