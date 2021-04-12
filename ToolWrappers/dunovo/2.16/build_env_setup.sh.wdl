version 1.0

task BuildEnvSetupsh {
  command <<<
    build_env_setup_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  output {
    File out_stdout = stdout()
  }
}