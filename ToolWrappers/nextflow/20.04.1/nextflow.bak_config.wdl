version 1.0

task NextflowbakConfig {
  input {
    Boolean? flat
    Boolean? profile
    Boolean? properties
    Boolean? show_profiles
    Boolean? sort
    String config
    String project
    String name
  }
  command <<<
    nextflow_bak config \
      ~{config} \
      ~{project} \
      ~{name} \
      ~{if (flat) then "-flat" else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (properties) then "-properties" else ""} \
      ~{if (show_profiles) then "-show-profiles" else ""} \
      ~{if (sort) then "-sort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flat: "Print config using flat notation\\nDefault: false"
    profile: "Choose a configuration profile"
    properties: "Prints config using Java properties notation\\nDefault: false"
    show_profiles: "Show all configuration profiles\\nDefault: false"
    sort: "Sort config attributes\\nDefault: false\\n"
    config: ""
    project: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}