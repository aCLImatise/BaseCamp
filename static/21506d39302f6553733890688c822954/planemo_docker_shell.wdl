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
      ~{if (from_tag) then "--from_tag" else ""} \
      ~{if defined(shell) then ("--shell " +  '"' + shell + '"') else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{if (docker_sudo) then "--docker_sudo" else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""}
  >>>
  parameter_meta {
    from_tag: "Treat the tool's Docker container identifier\\nas a locally cached tag."
    shell: "Shell to launch in container (defaults to\\n/bin/bash)."
    docker_cmd: "Command used to launch docker (defaults to\\ndocker)."
    docker_sudo: "/ --no_docker_sudo\\nFlag to use sudo when running docker."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    tool_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}