version 1.0

task Rcf {
  input {
    File nodesNodesPath
    String formatFormat
    File fileFile
    File genericGeneric
    File lmLmAt
    File clarkClark
    File krakenKraken
    File outOutHtml
    String extraExtra
    String controlsControls
    String scoringScoring
    String minMinScore
    Int minMinTaxA
    String excludeExclude
    String includeInclude
    Boolean avoidAvoidCross
    String ctrlCtrlMinScore
    Int ctrlCtrlMinTaxA
    String summarySummary
    Boolean takeTakeOutRoot
    Boolean noNoKolLapse
    Boolean debugDebug
    Boolean sequentialSequential
  }
  command <<<
    rcf \
      ~{if defined(nodesNodesPath) then ("--nodespath " +  '"' + nodesNodesPath + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(genericGeneric) then ("--generic " +  '"' + genericGeneric + '"') else ""} \
      ~{if defined(lmLmAt) then ("--lmat " +  '"' + lmLmAt + '"') else ""} \
      ~{if defined(clarkClark) then ("--clark " +  '"' + clarkClark + '"') else ""} \
      ~{if defined(krakenKraken) then ("--kraken " +  '"' + krakenKraken + '"') else ""} \
      ~{if defined(outOutHtml) then ("--outhtml " +  '"' + outOutHtml + '"') else ""} \
      ~{if defined(extraExtra) then ("--extra " +  '"' + extraExtra + '"') else ""} \
      ~{if defined(controlsControls) then ("--controls " +  '"' + controlsControls + '"') else ""} \
      ~{if defined(scoringScoring) then ("--scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(minMinScore) then ("--minscore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(minMinTaxA) then ("--mintaxa " +  '"' + minMinTaxA + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--avoidcross" false="" avoidAvoidCross} \
      ~{if defined(ctrlCtrlMinScore) then ("--ctrlminscore " +  '"' + ctrlCtrlMinScore + '"') else ""} \
      ~{if defined(ctrlCtrlMinTaxA) then ("--ctrlmintaxa " +  '"' + ctrlCtrlMinTaxA + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{true="--takeoutroot" false="" takeTakeOutRoot} \
      ~{true="--nokollapse" false="" noNoKolLapse} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--sequential" false="" sequentialSequential}
  >>>
}