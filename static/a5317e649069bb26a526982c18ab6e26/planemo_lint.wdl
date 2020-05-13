version 1.0

task PlanemoLint {
  input {
    Boolean reportReportLevel
    File reportReportXUnit
    Boolean failFailLevel
    String skipSkip
    Boolean xsdXsd
    Boolean recursiveRecursive
    Boolean urlsUrls
    Boolean doiDoi
    Boolean condCondARequirements
    Boolean bioBioContainers
  }
  command <<<
    planemo lint \
      ~{true="--report_level" false="" reportReportLevel} \
      ~{if defined(reportReportXUnit) then ("--report_xunit " +  '"' + reportReportXUnit + '"') else ""} \
      ~{true="--fail_level" false="" failFailLevel} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{true="--xsd" false="" xsdXsd} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--urls" false="" urlsUrls} \
      ~{true="--doi" false="" doiDoi} \
      ~{true="--conda_requirements" false="" condCondARequirements} \
      ~{true="--biocontainers" false="" bioBioContainers}
  >>>
}