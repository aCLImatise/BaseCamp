version 1.0

task Configyaml {
  command <<<
    config_yaml
  >>>
  runtime {
    docker: "quay.io/biocontainers/atlas-data-import:0.0.11--0"
  }
  output {
    File out_stdout = stdout()
  }
}