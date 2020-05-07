version 1.0

task FilterGffSequence {
  input {
    Boolean sortedSorted
    Boolean attributeAttribute
    Boolean functionFunction
    Float valueValue
    Boolean comparisonComparison
    Boolean progressProgress
  }
  command <<<
    filter-gff sequence \
      ~{true="--sorted" false="" sortedSorted} \
      ~{true="--attribute" false="" attributeAttribute} \
      ~{true="--function" false="" functionFunction} \
      ~{if defined(valueValue) then ("--value " +  '"' + valueValue + '"') else ""} \
      ~{true="--comparison" false="" comparisonComparison} \
      ~{true="--progress" false="" progressProgress}
  >>>
}