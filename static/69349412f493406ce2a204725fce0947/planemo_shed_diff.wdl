version 1.0

task PlanemoShedDiff {
  input {
    Boolean recursiveRecursive
    Boolean failFailFast
    String ownerOwner
    String nameName
    String shedShedEmail
    String shedShedKey
    String shedShedKeyFromEnv
    String shedShedPassword
    String shedShedTarget
    File outputOutput
    String shedShedTargetSource
    Boolean rawRaw
    File reportReportXUnit
  }
  command <<<
    planemo shed_diff \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(shedShedEmail) then ("--shed_email " +  '"' + shedShedEmail + '"') else ""} \
      ~{if defined(shedShedKey) then ("--shed_key " +  '"' + shedShedKey + '"') else ""} \
      ~{if defined(shedShedKeyFromEnv) then ("--shed_key_from_env " +  '"' + shedShedKeyFromEnv + '"') else ""} \
      ~{if defined(shedShedPassword) then ("--shed_password " +  '"' + shedShedPassword + '"') else ""} \
      ~{if defined(shedShedTarget) then ("--shed_target " +  '"' + shedShedTarget + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(shedShedTargetSource) then ("--shed_target_source " +  '"' + shedShedTargetSource + '"') else ""} \
      ~{true="--raw" false="" rawRaw} \
      ~{if defined(reportReportXUnit) then ("--report_xunit " +  '"' + reportReportXUnit + '"') else ""}
  >>>
}