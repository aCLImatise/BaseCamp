version 1.0

task PlanemoDockerBuild {
  input {
    String dockerDockerCmd
    Boolean dockerDockerSudo
    String dockerDockerSudoCmd
    String dockerDockerHost
  }
  command <<<
    planemo docker_build \
      ~{if defined(dockerDockerCmd) then ("--docker_cmd " +  '"' + dockerDockerCmd + '"') else ""} \
      ~{true="--docker_sudo" false="" dockerDockerSudo} \
      ~{if defined(dockerDockerSudoCmd) then ("--docker_sudo_cmd " +  '"' + dockerDockerSudoCmd + '"') else ""} \
      ~{if defined(dockerDockerHost) then ("--docker_host " +  '"' + dockerDockerHost + '"') else ""}
  >>>
}