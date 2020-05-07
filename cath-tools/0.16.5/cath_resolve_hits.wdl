version 1.0

task CathResolveHits {
  input {
    Boolean vV
    String inputInputFormat
    Int minMinGapLength
    Boolean inputInputHitsAreGrouped
    String overlapOverlapTrimSpec
    Int minMinSegLength
    String longLongDomainsPreference
    String highHighScoresPreference
    Boolean applyApplyCathRules
    Boolean naiveNaiveGreedy
    String worstWorstPermissibleEvalue
    String worstWorstPermissibleBitScore
    String worstWorstPermissibleScore
    String filterFilterQueryId
    Boolean limitLimitQueries
    File hitsHitsTextToFile
    Boolean quietQuiet
    Boolean outputOutputTrimmedHits
    File summariseSummariseToFile
    File htmlHtmlOutputToFile
    File jsonJsonOutputToFile
    File exportExportCssFile
    Boolean restrictRestrictHtmlWithinBody
    String htmlHtmlMaxNumNonSolnHits
    Boolean htmlHtmlExcludeRejectedHits
    Boolean cathCathRulesHelp
    Boolean rawRawFormatHelp
    String? inputInputFile
  }
  command <<<
    cath-resolve-hits \
      ~{inputInputFile} \
      ~{true="-v" false="" vV} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(minMinGapLength) then ("--min-gap-length " +  '"' + minMinGapLength + '"') else ""} \
      ~{true="--input-hits-are-grouped" false="" inputInputHitsAreGrouped} \
      ~{if defined(overlapOverlapTrimSpec) then ("--overlap-trim-spec " +  '"' + overlapOverlapTrimSpec + '"') else ""} \
      ~{if defined(minMinSegLength) then ("--min-seg-length " +  '"' + minMinSegLength + '"') else ""} \
      ~{if defined(longLongDomainsPreference) then ("--long-domains-preference " +  '"' + longLongDomainsPreference + '"') else ""} \
      ~{if defined(highHighScoresPreference) then ("--high-scores-preference " +  '"' + highHighScoresPreference + '"') else ""} \
      ~{true="--apply-cath-rules" false="" applyApplyCathRules} \
      ~{true="--naive-greedy" false="" naiveNaiveGreedy} \
      ~{if defined(worstWorstPermissibleEvalue) then ("--worst-permissible-evalue " +  '"' + worstWorstPermissibleEvalue + '"') else ""} \
      ~{if defined(worstWorstPermissibleBitScore) then ("--worst-permissible-bitscore " +  '"' + worstWorstPermissibleBitScore + '"') else ""} \
      ~{if defined(worstWorstPermissibleScore) then ("--worst-permissible-score " +  '"' + worstWorstPermissibleScore + '"') else ""} \
      ~{if defined(filterFilterQueryId) then ("--filter-query-id " +  '"' + filterFilterQueryId + '"') else ""} \
      ~{true="--limit-queries" false="" limitLimitQueries} \
      ~{if defined(hitsHitsTextToFile) then ("--hits-text-to-file " +  '"' + hitsHitsTextToFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--output-trimmed-hits" false="" outputOutputTrimmedHits} \
      ~{if defined(summariseSummariseToFile) then ("--summarise-to-file " +  '"' + summariseSummariseToFile + '"') else ""} \
      ~{if defined(htmlHtmlOutputToFile) then ("--html-output-to-file " +  '"' + htmlHtmlOutputToFile + '"') else ""} \
      ~{if defined(jsonJsonOutputToFile) then ("--json-output-to-file " +  '"' + jsonJsonOutputToFile + '"') else ""} \
      ~{if defined(exportExportCssFile) then ("--export-css-file " +  '"' + exportExportCssFile + '"') else ""} \
      ~{true="--restrict-html-within-body" false="" restrictRestrictHtmlWithinBody} \
      ~{if defined(htmlHtmlMaxNumNonSolnHits) then ("--html-max-num-non-soln-hits " +  '"' + htmlHtmlMaxNumNonSolnHits + '"') else ""} \
      ~{true="--html-exclude-rejected-hits" false="" htmlHtmlExcludeRejectedHits} \
      ~{true="--cath-rules-help" false="" cathCathRulesHelp} \
      ~{true="--raw-format-help" false="" rawRawFormatHelp}
  >>>
}