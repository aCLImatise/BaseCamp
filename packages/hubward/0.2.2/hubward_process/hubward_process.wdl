version 1.0

task HubwardProcess {
  input {
    String or
    String items
  }
  command <<<
    hubward process \
      ~{or} \
      ~{items}
  >>>
  parameter_meta {
    or: "- a file called metadata-builder.py (in which case it is executed and"
    items: "Path to directory containing metadata.yaml file or metadata-\\nbuilder.yaml file, or path to a group config YAML file. Can\\nspecify multiple."
  }
  output {
    File out_stdout = stdout()
  }
}