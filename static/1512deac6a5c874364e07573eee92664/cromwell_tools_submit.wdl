version 1.0

task CromwellToolsSubmit {
  input {
    String urlUrl
    String usernameUsername
    String passwordPassword
    String secretsSecretsFile
    String serviceServiceAccountKey
    String wdlWdlFile
    Array[String]+ inputsInputsFiles
    Array[String]+ depsDepsFile
    String optionsOptionsFile
    String labelLabelFile
    String collectionCollectionName
    String onOnHold
    String validateValidateLabels
  }
  command <<<
    cromwell-tools submit \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(passwordPassword) then ("--password " +  '"' + passwordPassword + '"') else ""} \
      ~{if defined(secretsSecretsFile) then ("--secrets-file " +  '"' + secretsSecretsFile + '"') else ""} \
      ~{if defined(serviceServiceAccountKey) then ("--service-account-key " +  '"' + serviceServiceAccountKey + '"') else ""} \
      ~{if defined(wdlWdlFile) then ("--wdl-file " +  '"' + wdlWdlFile + '"') else ""} \
      ~{if defined(inputsInputsFiles) then ("--inputs-files " +  '"' + inputsInputsFiles + '"') else ""} \
      ~{if defined(depsDepsFile) then ("--deps-file " +  '"' + depsDepsFile + '"') else ""} \
      ~{if defined(optionsOptionsFile) then ("--options-file " +  '"' + optionsOptionsFile + '"') else ""} \
      ~{if defined(labelLabelFile) then ("--label-file " +  '"' + labelLabelFile + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(onOnHold) then ("--on-hold " +  '"' + onOnHold + '"') else ""} \
      ~{if defined(validateValidateLabels) then ("--validate-labels " +  '"' + validateValidateLabels + '"') else ""}
  >>>
}