version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/realphy:1.13--0"
  }
  output {
    File out_stdout = stdout()
  }
}