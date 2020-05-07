version 1.0

task Glistcompare {
  input {
    Boolean unionUnion
    Boolean intersectionIntersection
    Boolean differenceDifference
    String doubleDoubleDifference
    Boolean diffDiffUnion
    Boolean mismatchMismatch
    String cutCutOff
    String outputOutputName
    String ruleRule
    String subsetSubset
    Boolean countCountOnly
    Boolean disableDisableScouts
    Boolean dD
    String? inputInputList1
    String? inputInputList2
    String? optionsOptions
  }
  command <<<
    glistcompare \
      ~{inputInputList1} \
      ~{true="--union" false="" unionUnion} \
      ~{true="--intersection" false="" intersectionIntersection} \
      ~{true="--difference" false="" differenceDifference} \
      ~{if defined(doubleDoubleDifference) then ("--double_difference " +  '"' + doubleDoubleDifference + '"') else ""} \
      ~{true="--diff_union" false="" diffDiffUnion} \
      ~{true="--mismatch" false="" mismatchMismatch} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(outputOutputName) then ("--outputname " +  '"' + outputOutputName + '"') else ""} \
      ~{if defined(ruleRule) then ("--rule " +  '"' + ruleRule + '"') else ""} \
      ~{if defined(subsetSubset) then ("--subset " +  '"' + subsetSubset + '"') else ""} \
      ~{true="--count_only" false="" countCountOnly} \
      ~{true="--disable_scouts" false="" disableDisableScouts} \
      ~{true="-D" false="" dD} \
      ~{inputInputList2} \
      ~{optionsOptions}
  >>>
}