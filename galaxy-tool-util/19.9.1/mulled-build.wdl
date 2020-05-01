version 1.0

task MulledBuild {
  input {
    String nameNameOverride
    String imageImageBuild
    String repositoryRepositoryName
    String testTest
    String testTestFiles
    String? commandCommand
    String? targetsTargets
  }
  command <<<
    mulled-build \
      ~{commandCommand} \
      ~{if defined(nameNameOverride) then ("--name-override " +  '"' + nameNameOverride + '"') else ""} \
      ~{if defined(imageImageBuild) then ("--image-build " +  '"' + imageImageBuild + '"') else ""} \
      ~{if defined(repositoryRepositoryName) then ("--repository-name " +  '"' + repositoryRepositoryName + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""} \
      ~{if defined(testTestFiles) then ("--test-files " +  '"' + testTestFiles + '"') else ""} \
      ~{targetsTargets}
  >>>
}