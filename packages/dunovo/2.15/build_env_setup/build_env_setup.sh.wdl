version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}