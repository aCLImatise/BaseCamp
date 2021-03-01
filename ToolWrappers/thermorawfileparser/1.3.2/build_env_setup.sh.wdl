version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}