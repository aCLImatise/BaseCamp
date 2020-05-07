version 1.0

task UniqMatureMirna.plXls {
  input {
    String? inputInput
    String? rawRaw
    String? expressionExpression
    String? xlsXls
    String? outputOutput
    String? xlsXls
  }
  command <<<
    uniq_mature_mirna.pl xls \
      ~{inputInput} \
      ~{rawRaw} \
      ~{expressionExpression} \
      ~{xlsXls} \
      ~{outputOutput} \
      ~{xlsXls}
  >>>
}