version 1.0

task DxCwlCompileTool {
  input {
    String? token
    String? project
    String? rootdir
    Array[String] assets
    Array[String] bundled
    String? extra_disk
    String? instance_provider
    String tool
  }
  command <<<
    dx-cwl compile-tool \
      ~{tool} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{if defined(assets) then ("--assets " +  '"' + assets + '"') else ""} \
      ~{if defined(bundled) then ("--bundled " +  '"' + bundled + '"') else ""} \
      ~{if defined(extra_disk) then ("--extradisk " +  '"' + extra_disk + '"') else ""} \
      ~{if defined(instance_provider) then ("--instance-provider " +  '"' + instance_provider + '"') else ""}
  >>>
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and resources"
    assets: "One or more DNAnexus asset IDs to include in tool."
    bundled: "One or more DNAnexus bundledDepends file IDs to include in tool."
    extra_disk: "Additional disk space required for instance in mebibytes (2**20)"
    instance_provider: "VM instance provider (default: aws)"
    tool: "CWL tool definition file"
  }
}