version 1.0

task IndelFit {
  input {
    String alphaAlpha
    String betaBeta
    String tauTau
    Boolean lnlLnl
    Boolean columnsColumns
    File featuresFeatures
    String referenceReference
    File logLog
  }
  command <<<
    indelFit \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{true="--lnl" false="" lnlLnl} \
      ~{true="--columns" false="" columnsColumns} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""}
  >>>
}