version 1.0

task CromwellToolsMetadata {
  input {
    String urlUrl
    String usernameUsername
    String passwordPassword
    String secretsSecretsFile
    String serviceServiceAccountKey
    String uuidUuid
    Array[String]+ includeIncludeKey
    Array[String]+ excludeExcludeKey
    String expandExpandSubWorkflows
  }
  command <<<
    cromwell-tools metadata \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(secretsSecretsFile) then ("--secrets-file " +  '"' + secretsSecretsFile + '"') else ""} \
      ~{if defined(serviceServiceAccountKey) then ("--service-account-key " +  '"' + serviceServiceAccountKey + '"') else ""} \
      ~{if defined(uuidUuid) then ("--uuid " +  '"' + uuidUuid + '"') else ""} \
      ~{if defined(includeIncludeKey) then ("--includeKey " +  '"' + includeIncludeKey + '"') else ""} \
      ~{if defined(excludeExcludeKey) then ("--excludeKey " +  '"' + excludeExcludeKey + '"') else ""} \
      ~{if defined(expandExpandSubWorkflows) then ("--expandSubWorkflows " +  '"' + expandExpandSubWorkflows + '"') else ""}
  >>>
}