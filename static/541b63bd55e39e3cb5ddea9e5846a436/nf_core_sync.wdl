version 1.0

task NfCoreSync {
  input {
    Boolean makeMakeTemplateBranch
    String fromFromBranch
    Boolean pullPullRequest
    String usernameUsername
    String repositoryRepository
    String authAuthToken
    Boolean allAll
  }
  command <<<
    nf-core sync \
      ~{true="--make-template-branch" false="" makeMakeTemplateBranch} \
      ~{if defined(fromFromBranch) then ("--from-branch " +  '"' + fromFromBranch + '"') else ""} \
      ~{true="--pull-request" false="" pullPullRequest} \
      ~{if defined(usernameUsername) then ("--username " +  '"' + usernameUsername + '"') else ""} \
      ~{if defined(repositoryRepository) then ("--repository " +  '"' + repositoryRepository + '"') else ""} \
      ~{if defined(authAuthToken) then ("--auth-token " +  '"' + authAuthToken + '"') else ""} \
      ~{true="--all" false="" allAll}
  >>>
}