version 1.0

task DifferentialExpression.shRunInfo {
  input {
    String? matureMatureMirnaExpressionXls
    String? outputOutputDir
    String? runRunInfo
  }
  command <<<
    differential_expression.sh run_info \
      ~{matureMatureMirnaExpressionXls} \
      ~{outputOutputDir} \
      ~{runRunInfo}
  >>>
}