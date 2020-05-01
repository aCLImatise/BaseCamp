version 1.0

task AnsiblePull {
  input {
    Boolean acceptAcceptHostKey
    Boolean askAskSudoPass
    String checkoutCheckout
    String directoryDirectory
    String extraExtraVars
    Boolean forceForce
    Boolean gitGitForce
    String inventoryInventoryFile
    String keyKeyFile
    String moduleModuleName
    Boolean onlyOnlyIfChanged
    Boolean purgePurge
    String sleepSleep
    String tagsTags
    Boolean trackTrackSubmodules
    String urlUrl
    String vaultVaultPasswordFile
    Boolean verboseVerbose
    String? playbookPlaybookYml
  }
  command <<<
    ansible-pull \
      ~{playbookPlaybookYml} \
      ~{true="--accept-host-key" false="" acceptAcceptHostKey} \
      ~{true="--ask-sudo-pass" false="" askAskSudoPass} \
      ~{if defined(checkoutCheckout) then ("--checkout " +  '"' + checkoutCheckout + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{if defined(extraExtraVars) then ("--extra-vars " +  '"' + extraExtraVars + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--git-force" false="" gitGitForce} \
      ~{if defined(inventoryInventoryFile) then ("--inventory-file " +  '"' + inventoryInventoryFile + '"') else ""} \
      ~{if defined(keyKeyFile) then ("--key-file " +  '"' + keyKeyFile + '"') else ""} \
      ~{if defined(moduleModuleName) then ("--module-name " +  '"' + moduleModuleName + '"') else ""} \
      ~{true="--only-if-changed" false="" onlyOnlyIfChanged} \
      ~{true="--purge" false="" purgePurge} \
      ~{if defined(sleepSleep) then ("--sleep " +  '"' + sleepSleep + '"') else ""} \
      ~{if defined(tagsTags) then ("--tags " +  '"' + tagsTags + '"') else ""} \
      ~{true="--track-submodules" false="" trackTrackSubmodules} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(vaultVaultPasswordFile) then ("--vault-password-file " +  '"' + vaultVaultPasswordFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}