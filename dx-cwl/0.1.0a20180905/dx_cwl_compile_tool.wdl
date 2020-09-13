version 1.0

task DxcwlCompiletool {
  input {
    String? token
    String? project
    Directory? rootdir
    Array[String] bundled
    Int? extra_disk
    String? instance_provider
    String resources
  }
  command <<<
    dx_cwl compile_tool \
      ~{resources} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{if defined(bundled) then ("--bundled " +  '"' + bundled + '"') else ""} \
      ~{if defined(extra_disk) then ("--extradisk " +  '"' + extra_disk + '"') else ""} \
      ~{if defined(instance_provider) then ("--instance-provider " +  '"' + instance_provider + '"') else ""}
  >>>
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and"
    bundled: "One or more DNAnexus bundledDepends file IDs to\\ninclude in tool."
    extra_disk: "Additional disk space required for instance in\\nmebibytes (2**20)"
    instance_provider: "VM instance provider (default: aws)\\n"
    resources: "--assets ASSETS [ASSETS ...]"
  }
  output {
    File out_stdout = stdout()
  }
}