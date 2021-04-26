version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.9--hdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}