version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}