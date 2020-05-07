version 1.0

task ChakinExpressionAddExpression {
  input {
    String separatorSeparator
    String unitUnit
    String queryQueryType
    Boolean matchMatchOnName
    String reReName
    Boolean skipSkipMissing
  }
  command <<<
    chakin expression add_expression \
      ~{if defined(separatorSeparator) then ("--separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(unitUnit) then ("--unit " +  '"' + unitUnit + '"') else ""} \
      ~{if defined(queryQueryType) then ("--query_type " +  '"' + queryQueryType + '"') else ""} \
      ~{true="--match_on_name" false="" matchMatchOnName} \
      ~{if defined(reReName) then ("--re_name " +  '"' + reReName + '"') else ""} \
      ~{true="--skip_missing" false="" skipSkipMissing}
  >>>
}