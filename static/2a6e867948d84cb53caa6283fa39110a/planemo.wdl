version 1.0

task Planemo {
  input {
    Boolean? verbose
    String? config
    String? directory
  }
  command <<<
    planemo \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    config: "Planemo configuration YAML file."
    directory: "Workspace for planemo."
  }
}