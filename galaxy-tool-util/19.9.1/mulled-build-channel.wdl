version 1.0

task MulledBuildChannel {
  input {
    String targetsTargets
    String repositoryRepositoryName
    String? commandCommand
  }
  command <<<
    mulled-build-channel \
      ~{commandCommand} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(repositoryRepositoryName) then ("--repository-name " +  '"' + repositoryRepositoryName + '"') else ""}
  >>>
}