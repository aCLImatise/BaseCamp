version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/scmap-cli:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}