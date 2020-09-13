version 1.0

task PlanemoDockerBuild {
  input {
    String? docker_file
    String? docker_image_cache
    String? docker_cmd
    Boolean? docker_sudo
    String? docker_sudo_cmd
    String? docker_host
    String image_dot
  }
  command <<<
    planemo docker_build \
      ~{image_dot} \
      ~{if defined(docker_file) then ("--dockerfile " +  '"' + docker_file + '"') else ""} \
      ~{if defined(docker_image_cache) then ("--docker_image_cache " +  '"' + docker_image_cache + '"') else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{if (docker_sudo) then "--docker_sudo" else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""}
  >>>
  parameter_meta {
    docker_file: ""
    docker_image_cache: ""
    docker_cmd: "Command used to launch docker (defaults to\\ndocker)."
    docker_sudo: "/ --no_docker_sudo\\nFlag to use sudo when running docker."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    image_dot: "% planemo docker_build bowtie2.xml # asssumes Dockerfile in same dir\\n% planemo docker_shell --from_tag bowtie2.xml"
  }
  output {
    File out_stdout = stdout()
  }
}