version 1.0

task ParsecWorkflowsUpdateWorkflow {
  input {
    String? annotation
    Boolean? menu_entry
    String? name
    String? tags
    String? dictionary_representing_workflow
    String workflow_id
  }
  command <<<
    parsec workflows update_workflow \
      ~{workflow_id} \
      ~{if defined(annotation) then ("--annotation " +  '"' + annotation + '"') else ""} \
      ~{if (menu_entry) then "--menu_entry" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""} \
      ~{if defined(dictionary_representing_workflow) then ("--workflow " +  '"' + dictionary_representing_workflow + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    annotation: "New annotation for the workflow"
    menu_entry: "Whether the workflow should appear in the user's menu"
    name: "New name of the workflow"
    tags: "Replace workflow tags with the given list"
    dictionary_representing_workflow: "dictionary representing the workflow to be updated"
    workflow_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}