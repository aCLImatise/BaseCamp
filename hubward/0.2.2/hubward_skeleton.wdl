version 1.0

task HubwardSkeleton {
  input {
    String? host
    File? hub_remote
    Boolean? use_metadata_builder
    String dirname
  }
  command <<<
    hubward skeleton \
      ~{dirname} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(hub_remote) then ("--hub_remote " +  '"' + hub_remote + '"') else ""} \
      ~{if (use_metadata_builder) then "--use-metadata-builder" else ""}
  >>>
  parameter_meta {
    host: "\\"
    hub_remote: ""
    use_metadata_builder: "Sets up a metadata-builder.py script instead of a\\nmetadata.yaml config file. Useful for more complicated\\nstudies (default: False)\\n"
    dirname: "Path to contain skeleton project"
  }
  output {
    File out_stdout = stdout()
  }
}