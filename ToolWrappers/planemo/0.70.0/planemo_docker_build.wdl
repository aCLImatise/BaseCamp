version 1.0

task PlanemoDockerBuild {
  input {
    String? docker_file
    String image_dot
  }
  command <<<
    planemo docker_build \
      ~{image_dot} \
      ~{if defined(docker_file) then ("--dockerfile " +  '"' + docker_file + '"') else ""}
  >>>
  parameter_meta {
    docker_file: "--docker_image_cache TEXT\\n--docker_cmd TEXT               Command used to launch docker (defaults to\\ndocker).\\n--docker_sudo / --no_docker_sudo\\nFlag to use sudo when running docker.\\n--docker_sudo_cmd TEXT          sudo command to use when --docker_sudo is\\nenabled (defaults to sudo).\\n--docker_host TEXT              Docker host to target when executing docker\\ncommands (defaults to localhost).\\n--help                          Show this message and exit.\\n"
    image_dot: "% planemo docker_build bowtie2.xml # asssumes Dockerfile in same dir\\n% planemo docker_shell --from_tag bowtie2.xml"
  }
  output {
    File out_stdout = stdout()
  }
}