version 1.0

task DxCwlRunWorkflow {
  input {
    String? token
    String? project
    String? rootdir
    Boolean? wait
    String pointer_workflowapplet_file
    String inputs
  }
  command <<<
    dx-cwl run-workflow \
      ~{pointer_workflowapplet_file} \
      ~{inputs} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""} \
      ~{true="--wait" false="" wait}
  >>>
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and resources"
    wait: "Pointer to CWL input file on (JSON or YAML) the platform. All files referenced within this file should exist within the project on the platform. Relative paths are supported."
    pointer_workflowapplet_file: "Pointer to workflow/applet file or ID on the platform"
    inputs: "Pointer to CWL input file on (JSON or YAML) the platform. All files referenced within this file should exist within the project on the platform. Relative paths are supported."
  }
}