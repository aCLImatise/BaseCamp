version 1.0

task Humann2RegroupTable {
  input {
    String inputInput
    String groupsGroups
    String customCustom
    Boolean reversedReversed
    String functionFunction
    String precisionPrecision
    String ungroupedUngrouped
    String protectedProtected
    String outputOutput
  }
  command <<<
    humann2_regroup_table \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(customCustom) then ("--custom " +  '"' + customCustom + '"') else ""} \
      ~{true="--reversed" false="" reversedReversed} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(precisionPrecision) then ("--precision " +  '"' + precisionPrecision + '"') else ""} \
      ~{if defined(ungroupedUngrouped) then ("--ungrouped " +  '"' + ungroupedUngrouped + '"') else ""} \
      ~{if defined(protectedProtected) then ("--protected " +  '"' + protectedProtected + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}