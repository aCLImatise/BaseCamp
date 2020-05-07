version 1.0

task BigWigMerge {
  input {
    Boolean thresholdThreshold
    Boolean adjustAdjust
    String valuesValues
    File inInList
    String mergedMerged
  }
  command <<<
    bigWigMerge \
      ~{true="-threshold" false="" thresholdThreshold} \
      ~{true="-adjust" false="" adjustAdjust} \
      ~{if defined(valuesValues) then ("- values " +  '"' + valuesValues + '"') else ""} \
      ~{if defined(inInList) then ("-inList " +  '"' + inInList + '"') else ""} \
      ~{if defined(mergedMerged) then ("- merged " +  '"' + mergedMerged + '"') else ""}
  >>>
}