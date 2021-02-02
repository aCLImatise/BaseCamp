version 1.0

task DockerTestScript {
  command <<<
    docker_test_script
  >>>
  output {
    File out_stdout = stdout()
  }
}