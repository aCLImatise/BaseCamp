version 1.0

task DxCwlCompileWorkflow {
  input {
    String? token
    String? project
    String? rootdir
    Array[String] assets
    Array[String] bundled
    String? instance_provider
    String cwl_workflow_definition
  }
  command <<<
    dx-cwl compile-workflow \
      ~{cwl_workflow_definition} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{if defined(assets) then ("--assets " +  '"' + assets + '"') else ""} \
      ~{if defined(bundled) then ("--bundled " +  '"' + bundled + '"') else ""} \
      ~{if defined(instance_provider) then ("--instance-provider " +  '"' + instance_provider + '"') else ""}
  >>>
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and resources"
    assets: "One or more DNAnexus asset IDs to include in tools."
    bundled: "One or more DNAnexus bundledDepends file IDs to include in tool."
    instance_provider: "VM instance provider (default: aws)"
    cwl_workflow_definition: "CWL workflow definition file"
  }
}