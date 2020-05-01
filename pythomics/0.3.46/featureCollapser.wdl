version 1.0

task FeatureCollapser.py {
  input {
    String pP
    String tsvTsv
    String delimiterDelimiter
    String groupGroupOn
    String headerHeader
    Boolean oO
    Boolean substringSubstring
    String summarySummaryCol
    String summarySummaryColFunc
    String summarySummaryColDelimiter
    Boolean strictStrict
    Boolean mergeMerge
    Boolean caseCaseSensitive
  }
  command <<<
    featureCollapser.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tsvTsv) then ("--tsv " +  '"' + tsvTsv + '"') else ""} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""} \
      ~{if defined(groupGroupOn) then ("--group-on " +  '"' + groupGroupOn + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="--substring" false="" substringSubstring} \
      ~{if defined(summarySummaryCol) then ("--summary-col " +  '"' + summarySummaryCol + '"') else ""} \
      ~{if defined(summarySummaryColFunc) then ("--summary-col-func " +  '"' + summarySummaryColFunc + '"') else ""} \
      ~{if defined(summarySummaryColDelimiter) then ("--summary-col-delimiter " +  '"' + summarySummaryColDelimiter + '"') else ""} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--merge" false="" mergeMerge} \
      ~{true="--case-sensitive" false="" caseCaseSensitive}
  >>>
}