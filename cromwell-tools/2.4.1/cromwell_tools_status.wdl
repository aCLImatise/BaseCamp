version 1.0

task CromwellToolsStatus {
  input {
    String urlUrl
    String usernameUsername
    String passwordPassword
    String secretsSecretsFile
    String serviceServiceAccountKey
    String uuidUuid
  }
  command <<<
    cromwell-tools status \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(secretsSecretsFile) then ("--secrets-file " +  '"' + secretsSecretsFile + '"') else ""} \
      ~{if defined(serviceServiceAccountKey) then ("--service-account-key " +  '"' + serviceServiceAccountKey + '"') else ""} \
      ~{if defined(uuidUuid) then ("--uuid " +  '"' + uuidUuid + '"') else ""}
  >>>
}