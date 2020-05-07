version 1.0

task PlanemoShedUpdate {
  input {
    File reportReportXUnit
    Boolean recursiveRecursive
    Boolean failFailFast
    String ownerOwner
    String nameName
    String shedShedEmail
    String shedShedKey
    String shedShedKeyFromEnv
    String shedShedPassword
    String shedShedTarget
    String messageMessage
    Boolean forceForceRepositoryCreation
    Boolean checkCheckDiff
    Boolean skipSkipUpload
    Boolean skipSkipMetadata
  }
  command <<<
    planemo shed_update \
      ~{if defined(reportReportXUnit) then ("--report_xunit " +  '"' + reportReportXUnit + '"') else ""} \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(shedShedEmail) then ("--shed_email " +  '"' + shedShedEmail + '"') else ""} \
      ~{if defined(shedShedKey) then ("--shed_key " +  '"' + shedShedKey + '"') else ""} \
      ~{if defined(shedShedKeyFromEnv) then ("--shed_key_from_env " +  '"' + shedShedKeyFromEnv + '"') else ""} \
      ~{if defined(shedShedPassword) then ("--shed_password " +  '"' + shedShedPassword + '"') else ""} \
      ~{if defined(shedShedTarget) then ("--shed_target " +  '"' + shedShedTarget + '"') else ""} \
      ~{if defined(messageMessage) then ("--message " +  '"' + messageMessage + '"') else ""} \
      ~{true="--force_repository_creation" false="" forceForceRepositoryCreation} \
      ~{true="--check_diff" false="" checkCheckDiff} \
      ~{true="--skip_upload" false="" skipSkipUpload} \
      ~{true="--skip_metadata" false="" skipSkipMetadata}
  >>>
}