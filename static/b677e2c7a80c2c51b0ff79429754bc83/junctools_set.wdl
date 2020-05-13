version 1.0

task JunctoolsSet {
  input {
    Int minMinEntry
    String operatorOperator
    String outputOutput
    String prefixPrefix
    Boolean ignoreIgnoreStrand
    String? modeMode
    String? inputInput
  }
  command <<<
    junctools set \
      ~{modeMode} \
      ~{if defined(minMinEntry) then ("--min_entry " +  '"' + minMinEntry + '"') else ""} \
      ~{if defined(operatorOperator) then ("--operator " +  '"' + operatorOperator + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--ignore_strand" false="" ignoreIgnoreStrand} \
      ~{inputInput}
  >>>
}