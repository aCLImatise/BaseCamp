version 1.0

task IuFilterQualityBokulich {
  input {
    Float pP
    Int qQ
    Int rR
    Int nN
    Boolean ignoreIgnoreDefLines
    Boolean visualizeVisualizeQualityCurves
    Int limitLimitNumPairs
    Boolean printPrintQualScores
    Boolean storeStoreReadFate
    String? configConfigFile
  }
  command <<<
    iu-filter-quality-bokulich \
      ~{configConfigFile} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--ignore-deflines" false="" ignoreIgnoreDefLines} \
      ~{true="--visualize-quality-curves" false="" visualizeVisualizeQualityCurves} \
      ~{if defined(limitLimitNumPairs) then ("--limit-num-pairs " +  '"' + limitLimitNumPairs + '"') else ""} \
      ~{true="--print-qual-scores" false="" printPrintQualScores} \
      ~{true="--store-read-fate" false="" storeStoreReadFate}
  >>>
}