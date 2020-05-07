version 1.0

task AnsiblePlaybook {
  input {
    Boolean askAskBecomePass
    Boolean askAskPass
    Boolean askAskSuPass
    Boolean askAskSudoPass
    Boolean askAskVaultPass
    Boolean becomeBecome
    String becomeBecomeMethod
    String becomeBecomeUser
    Boolean checkCheck
    String connectionConnection
    Boolean diffDiff
    String extraExtraVars
    Boolean flushFlushCache
    Boolean forceForceHandlers
    String forksForks
    String inventoryInventoryFile
    String limitLimit
    Boolean listListHosts
    Boolean listListTags
    Boolean listListTasks
    String moduleModulePath
    String privatePrivateKey
    String skipSkipTags
    String startStartAtTask
    Boolean stepStep
    Boolean suSu
    String suSuUser
    Boolean sudoSudo
    String sudoSudoUser
    Boolean syntaxSyntaxCheck
    String tagsTags
    String timeoutTimeout
    String userUser
    String vaultVaultPasswordFile
    Boolean verboseVerbose
    String? playbookPlaybookYml
  }
  command <<<
    ansible-playbook \
      ~{playbookPlaybookYml} \
      ~{true="--ask-become-pass" false="" askAskBecomePass} \
      ~{true="--ask-pass" false="" askAskPass} \
      ~{true="--ask-su-pass" false="" askAskSuPass} \
      ~{true="--ask-sudo-pass" false="" askAskSudoPass} \
      ~{true="--ask-vault-pass" false="" askAskVaultPass} \
      ~{true="--become" false="" becomeBecome} \
      ~{if defined(becomeBecomeMethod) then ("--become-method " +  '"' + becomeBecomeMethod + '"') else ""} \
      ~{if defined(becomeBecomeUser) then ("--become-user " +  '"' + becomeBecomeUser + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(connectionConnection) then ("--connection " +  '"' + connectionConnection + '"') else ""} \
      ~{true="--diff" false="" diffDiff} \
      ~{if defined(extraExtraVars) then ("--extra-vars " +  '"' + extraExtraVars + '"') else ""} \
      ~{true="--flush-cache" false="" flushFlushCache} \
      ~{true="--force-handlers" false="" forceForceHandlers} \
      ~{if defined(forksForks) then ("--forks " +  '"' + forksForks + '"') else ""} \
      ~{if defined(inventoryInventoryFile) then ("--inventory-file " +  '"' + inventoryInventoryFile + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--list-hosts" false="" listListHosts} \
      ~{true="--list-tags" false="" listListTags} \
      ~{true="--list-tasks" false="" listListTasks} \
      ~{if defined(moduleModulePath) then ("--module-path " +  '"' + moduleModulePath + '"') else ""} \
      ~{if defined(privatePrivateKey) then ("--private-key " +  '"' + privatePrivateKey + '"') else ""} \
      ~{if defined(skipSkipTags) then ("--skip-tags " +  '"' + skipSkipTags + '"') else ""} \
      ~{if defined(startStartAtTask) then ("--start-at-task " +  '"' + startStartAtTask + '"') else ""} \
      ~{true="--step" false="" stepStep} \
      ~{true="--su" false="" suSu} \
      ~{if defined(suSuUser) then ("--su-user " +  '"' + suSuUser + '"') else ""} \
      ~{true="--sudo" false="" sudoSudo} \
      ~{if defined(sudoSudoUser) then ("--sudo-user " +  '"' + sudoSudoUser + '"') else ""} \
      ~{true="--syntax-check" false="" syntaxSyntaxCheck} \
      ~{if defined(tagsTags) then ("--tags " +  '"' + tagsTags + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(vaultVaultPasswordFile) then ("--vault-password-file " +  '"' + vaultVaultPasswordFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}