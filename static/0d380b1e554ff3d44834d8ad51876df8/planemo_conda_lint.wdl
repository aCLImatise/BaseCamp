version 1.0

task PlanemoCondaLint {
  input {
    Boolean reportReportLevel
    Boolean failFailLevel
    Boolean recursiveRecursive
  }
  command <<<
    planemo conda_lint \
      ~{true="--report_level" false="" reportReportLevel} \
      ~{true="--fail_level" false="" failFailLevel} \
      ~{true="--recursive" false="" recursiveRecursive}
  >>>
}