version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-data-import:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}