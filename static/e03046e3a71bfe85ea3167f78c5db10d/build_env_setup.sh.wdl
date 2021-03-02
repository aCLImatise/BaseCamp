version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}