version 1.0

task HubwardSkeleton {
  input {
    String? host
    Boolean? use_metadata_builder
    String dirname
  }
  command <<<
    hubward skeleton \
      ~{dirname} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if (use_metadata_builder) then "--use-metadata-builder" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    host: "\\"
    use_metadata_builder: "Sets up a metadata-builder.py script instead of a\\nmetadata.yaml config file. Useful for more complicated\\nstudies (default: False)\\n"
    dirname: "Path to contain skeleton project"
  }
  output {
    File out_stdout = stdout()
  }
}