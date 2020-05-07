version 1.0

task VtoolsCompare {
  input {
    Boolean unionUnion
    Boolean intersectionIntersection
    Boolean differenceDifference
    String expressionExpression
    String modeMode
    Boolean samplesSamples
    Boolean vV
    String? tablesTables
  }
  command <<<
    vtools compare \
      ~{tablesTables} \
      ~{true="--union" false="" unionUnion} \
      ~{true="--intersection" false="" intersectionIntersection} \
      ~{true="--difference" false="" differenceDifference} \
      ~{if defined(expressionExpression) then ("--expression " +  '"' + expressionExpression + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="-v" false="" vV}
  >>>
}