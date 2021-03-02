version 1.0

task SingularityPluginList {
  input {
    String enabled
    String yes
  }
  command <<<
    singularity plugin list \
      ~{enabled} \
      ~{yes}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    enabled: "NAME"
    yes: "example.org/plugin"
  }
  output {
    File out_stdout = stdout()
  }
}