version 1.0

task PlanemoDockerBuild {
  input {
    String? docker_image_cache
    Boolean? no_docker_sudo
    String? docker_sudo_cmd
    String? docker_host
    String image_dot
  }
  command <<<
    planemo docker_build \
      ~{image_dot} \
      ~{if defined(docker_image_cache) then ("--docker_image_cache " +  '"' + docker_image_cache + '"') else ""} \
      ~{if (no_docker_sudo) then "--no_docker_sudo" else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    docker_image_cache: "Command used to launch docker (defaults to\\ndocker)."
    no_docker_sudo: "Flag to use sudo when running docker."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    image_dot: "% planemo docker_build bowtie2.xml # asssumes Dockerfile in same dir\\n% planemo docker_shell --from_tag bowtie2.xml"
  }
  output {
    File out_stdout = stdout()
  }
}