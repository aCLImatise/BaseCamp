version 1.0

task IuFilterQualityMinoche {
  input {
    Float pP
    Boolean ignoreIgnoreDefLines
    Boolean visualizeVisualizeQualityCurves
    Int limitLimitNumPairs
    Boolean printPrintQualScores
    Boolean storeStoreReadFate
    String? configConfigFile
  }
  command <<<
    iu-filter-quality-minoche \
      ~{configConfigFile} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="--ignore-deflines" false="" ignoreIgnoreDefLines} \
      ~{true="--visualize-quality-curves" false="" visualizeVisualizeQualityCurves} \
      ~{if defined(limitLimitNumPairs) then ("--limit-num-pairs " +  '"' + limitLimitNumPairs + '"') else ""} \
      ~{true="--print-qual-scores" false="" printPrintQualScores} \
      ~{true="--store-read-fate" false="" storeStoreReadFate}
  >>>
}