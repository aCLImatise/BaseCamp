version 1.0

task DxcwlCompileworkflow {
  input {
    String? token
    String? project
    Directory? rootdir
    Array[String] bundled
    String? instance_provider
  }
  command <<<
    dx_cwl compile_workflow \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{if defined(bundled) then ("--bundled " +  '"' + bundled + '"') else ""} \
      ~{if defined(instance_provider) then ("--instance-provider " +  '"' + instance_provider + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and"
    bundled: "One or more DNAnexus bundledDepends file IDs to\\ninclude in tool."
    instance_provider: "VM instance provider (default: aws)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}