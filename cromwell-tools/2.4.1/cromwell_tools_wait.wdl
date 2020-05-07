version 1.0

task CromwellToolsWait {
  input {
    String urlUrl
    String usernameUsername
    String passwordPassword
    String secretsSecretsFile
    String serviceServiceAccountKey
    String timeoutTimeoutMinutes
    String pollPollIntervalSeconds
    Boolean silentSilent
  }
  command <<<
    cromwell-tools wait \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(secretsSecretsFile) then ("--secrets-file " +  '"' + secretsSecretsFile + '"') else ""} \
      ~{if defined(serviceServiceAccountKey) then ("--service-account-key " +  '"' + serviceServiceAccountKey + '"') else ""} \
      ~{if defined(timeoutTimeoutMinutes) then ("--timeout-minutes " +  '"' + timeoutTimeoutMinutes + '"') else ""} \
      ~{if defined(pollPollIntervalSeconds) then ("--poll-interval-seconds " +  '"' + pollPollIntervalSeconds + '"') else ""} \
      ~{true="--silent" false="" silentSilent}
  >>>
}