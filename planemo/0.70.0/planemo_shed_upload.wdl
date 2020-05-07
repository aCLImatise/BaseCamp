version 1.0

task PlanemoShedUpload {
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
    String messageMessage
    Boolean forceForceRepositoryCreation
    Boolean checkCheckDiff
    Boolean tarTarOnly
    File tarTar
  }
  command <<<
    planemo shed_upload \
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
      ~{true="--tar_only" false="" tarTarOnly} \
      ~{if defined(tarTar) then ("--tar " +  '"' + tarTar + '"') else ""}
  >>>
}