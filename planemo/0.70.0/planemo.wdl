version 1.0

task Planemo {
  input {
    Boolean? verbose
    File? config
    Directory? directory
  }
  command <<<
    planemo \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Enables verbose mode."
    config: "Planemo configuration YAML file."
    directory: "Workspace for planemo."
  }
  output {
    File out_stdout = stdout()
  }
}