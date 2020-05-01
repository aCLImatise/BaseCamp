version 1.0

task Ansible {
  input {
    String argsArgs
    Boolean askAskBecomePass
    Boolean askAskPass
    Boolean askAskSuPass
    Boolean askAskSudoPass
    Boolean askAskVaultPass
    String backgroundBackground
    Boolean becomeBecome
    String becomeBecomeMethod
    String becomeBecomeUser
    Boolean checkCheck
    String connectionConnection
    String extraExtraVars
    String forksForks
    String inventoryInventoryFile
    String limitLimit
    Boolean listListHosts
    String moduleModuleName
    String moduleModulePath
    Boolean oneOneLine
    String pollPoll
    String privatePrivateKey
    Boolean suSu
    String suSuUser
    Boolean sudoSudo
    String sudoSudoUser
    String timeoutTimeout
    String treeTree
    String userUser
    String vaultVaultPasswordFile
    Boolean verboseVerbose
    String? hostHostPattern
  }
  command <<<
    ansible \
      ~{hostHostPattern} \
      ~{if defined(argsArgs) then ("--args " +  '"' + argsArgs + '"') else ""} \
      ~{true="--ask-become-pass" false="" askAskBecomePass} \
      ~{true="--ask-pass" false="" askAskPass} \
      ~{true="--ask-su-pass" false="" askAskSuPass} \
      ~{true="--ask-sudo-pass" false="" askAskSudoPass} \
      ~{true="--ask-vault-pass" false="" askAskVaultPass} \
      ~{if defined(backgroundBackground) then ("--background " +  '"' + backgroundBackground + '"') else ""} \
      ~{true="--become" false="" becomeBecome} \
      ~{if defined(becomeBecomeMethod) then ("--become-method " +  '"' + becomeBecomeMethod + '"') else ""} \
      ~{if defined(becomeBecomeUser) then ("--become-user " +  '"' + becomeBecomeUser + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(connectionConnection) then ("--connection " +  '"' + connectionConnection + '"') else ""} \
      ~{if defined(extraExtraVars) then ("--extra-vars " +  '"' + extraExtraVars + '"') else ""} \
      ~{if defined(forksForks) then ("--forks " +  '"' + forksForks + '"') else ""} \
      ~{if defined(inventoryInventoryFile) then ("--inventory-file " +  '"' + inventoryInventoryFile + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{true="--list-hosts" false="" listListHosts} \
      ~{if defined(moduleModuleName) then ("--module-name " +  '"' + moduleModuleName + '"') else ""} \
      ~{if defined(moduleModulePath) then ("--module-path " +  '"' + moduleModulePath + '"') else ""} \
      ~{true="--one-line" false="" oneOneLine} \
      ~{if defined(pollPoll) then ("--poll " +  '"' + pollPoll + '"') else ""} \
      ~{if defined(privatePrivateKey) then ("--private-key " +  '"' + privatePrivateKey + '"') else ""} \
      ~{true="--su" false="" suSu} \
      ~{if defined(suSuUser) then ("--su-user " +  '"' + suSuUser + '"') else ""} \
      ~{true="--sudo" false="" sudoSudo} \
      ~{if defined(sudoSudoUser) then ("--sudo-user " +  '"' + sudoSudoUser + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(userUser) then ("--user " +  '"' + userUser + '"') else ""} \
      ~{if defined(vaultVaultPasswordFile) then ("--vault-password-file " +  '"' + vaultVaultPasswordFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}