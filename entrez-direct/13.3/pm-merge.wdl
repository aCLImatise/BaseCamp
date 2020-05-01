version 1.0

task PmMerge {
  input {
    String wholeWholeName
    String xXType
    String execExec
    String execExecDir
    String wholeWholeName
    String xXType
    String execExec
    String execExecDir
    String? findFind
    File? pathPath
    String? expressionExpression
  }
  command <<<
    pm-merge \
      ~{findFind} \
      ~{if defined(wholeWholeName) then ("-wholename " +  '"' + wholeWholeName + '"') else ""} \
      ~{if defined(xXType) then ("-xtype " +  '"' + xXType + '"') else ""} \
      ~{if defined(execExec) then ("-exec " +  '"' + execExec + '"') else ""} \
      ~{if defined(execExecDir) then ("-execdir " +  '"' + execExecDir + '"') else ""} \
      ~{if defined(wholeWholeName) then ("-wholename " +  '"' + wholeWholeName + '"') else ""} \
      ~{if defined(xXType) then ("-xtype " +  '"' + xXType + '"') else ""} \
      ~{if defined(execExec) then ("-exec " +  '"' + execExec + '"') else ""} \
      ~{if defined(execExecDir) then ("-execdir " +  '"' + execExecDir + '"') else ""} \
      ~{pathPath} \
      ~{expressionExpression}
  >>>
}