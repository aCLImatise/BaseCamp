version 1.0

task DxcwlRunworkflow {
  input {
    String? token
    String? project
    Directory? rootdir
    String pointer_workflowapplet_file
    String inputs
    String resources
  }
  command <<<
    dx_cwl run_workflow \
      ~{pointer_workflowapplet_file} \
      ~{inputs} \
      ~{resources} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(rootdir) then ("--rootdir " +  '"' + rootdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    token: "DNAnexus authentication token"
    project: "DNAnexus project ID"
    rootdir: "Root directory to place CWL workflow, tools, and"
    pointer_workflowapplet_file: "Pointer to workflow/applet file or ID on the platform"
    inputs: "Pointer to CWL input file on (JSON or YAML) the platform.\\nAll files referenced within this file should exist within\\nthe project on the platform. Relative paths are\\nsupported."
    resources: "--wait             Pointer to CWL input file on (JSON or YAML) the platform."
  }
  output {
    File out_stdout = stdout()
  }
}