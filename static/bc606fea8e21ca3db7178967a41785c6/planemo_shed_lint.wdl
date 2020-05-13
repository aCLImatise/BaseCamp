version 1.0

task PlanemoShedLint {
  input {
    Boolean recursiveRecursive
    Boolean failFailFast
    Boolean reportReportLevel
    Boolean failFailLevel
    Boolean toolsTools
    Boolean xsdXsd
    Boolean ensureEnsureMetadata
    Boolean urlsUrls
  }
  command <<<
    planemo shed_lint \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{true="--report_level" false="" reportReportLevel} \
      ~{true="--fail_level" false="" failFailLevel} \
      ~{true="--tools" false="" toolsTools} \
      ~{true="--xsd" false="" xsdXsd} \
      ~{true="--ensure_metadata" false="" ensureEnsureMetadata} \
      ~{true="--urls" false="" urlsUrls}
  >>>
}