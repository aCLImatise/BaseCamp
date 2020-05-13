version 1.0

task PlanemoShedDownload {
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
    File destinationDestination
  }
  command <<<
    planemo shed_download \
      ~{true="--recursive" false="" recursiveRecursive} \
      ~{true="--fail_fast" false="" failFailFast} \
      ~{if defined(ownerOwner) then ("--owner " +  '"' + ownerOwner + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(shedShedEmail) then ("--shed_email " +  '"' + shedShedEmail + '"') else ""} \
      ~{if defined(shedShedKey) then ("--shed_key " +  '"' + shedShedKey + '"') else ""} \
      ~{if defined(shedShedKeyFromEnv) then ("--shed_key_from_env " +  '"' + shedShedKeyFromEnv + '"') else ""} \
      ~{if defined(shedShedPassword) then ("--shed_password " +  '"' + shedShedPassword + '"') else ""} \
      ~{if defined(shedShedTarget) then ("--shed_target " +  '"' + shedShedTarget + '"') else ""} \
      ~{if defined(destinationDestination) then ("--destination " +  '"' + destinationDestination + '"') else ""}
  >>>
}