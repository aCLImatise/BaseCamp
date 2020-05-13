version 1.0

task Retest {
  input {
    Boolean debugDebug
    Boolean ignoreIgnore
    Boolean localLocal
    Boolean minMinTaxA
    Boolean rocRoc
    Boolean skipSkip
    String minMinScore
  }
  command <<<
    retest \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{true="--local" false="" localLocal} \
      ~{true="--mintaxa" false="" minMinTaxA} \
      ~{true="--roc" false="" rocRoc} \
      ~{true="--skip" false="" skipSkip} \
      ~{if defined(minMinScore) then ("--minscore " +  '"' + minMinScore + '"') else ""}
  >>>
}