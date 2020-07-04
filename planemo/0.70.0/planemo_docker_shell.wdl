version 1.0

task PlanemoDockerShell {
  input {
    Boolean? from_tag
    String? shell
    String? docker_cmd
    Boolean? docker_sudo
    String? docker_sudo_cmd
    String? docker_host
    String tool_path
  }
  command <<<
    planemo docker_shell \
      ~{tool_path} \
      ~{true="--from_tag" false="" from_tag} \
      ~{if defined(shell) then ("--shell " +  '"' + shell + '"') else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{true="--docker_sudo" false="" docker_sudo} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""}
  >>>
  parameter_meta {
    from_tag: "Treat the tool's Docker container identifier as a locally cached tag."
    shell: "Shell to launch in container (defaults to /bin/bash)."
    docker_cmd: "Command used to launch docker (defaults to docker)."
    docker_sudo: "/ --no_docker_sudo Flag to use sudo when running docker."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is enabled (defaults to sudo)."
    docker_host: "Docker host to target when executing docker commands (defaults to localhost)."
    tool_path: ""
  }
}