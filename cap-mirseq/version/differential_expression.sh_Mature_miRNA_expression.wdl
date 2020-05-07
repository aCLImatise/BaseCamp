version 1.0

task DifferentialExpression.shMatureMiRNAExpression.xlsRunInfo {
  input {
    String? outputOutputDir
    String? runRunInfo
  }
  command <<<
    differential_expression.sh Mature_miRNA_expression.xls run_info \
      ~{outputOutputDir} \
      ~{runRunInfo}
  >>>
}