version 1.0

task MulledBuildChannel {
  input {
    String? targets
    String? repository_name
    String? repo_data
    String command_list_buildandtest
  }
  command <<<
    mulled-build-channel \
      ~{command_list_buildandtest} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(repository_name) then ("--repository-name " +  '"' + repository_name + '"') else ""} \
      ~{if defined(repo_data) then ("--repo-data " +  '"' + repo_data + '"') else ""}
  >>>
  parameter_meta {
    targets: "Build a single container with specific package(s)."
    repository_name: "Name of a single container (leave blank to auto-generate based on packages)."
    repo_data: ""
    command_list_buildandtest: "Command (list, build-and-test, build, all)"
  }
}