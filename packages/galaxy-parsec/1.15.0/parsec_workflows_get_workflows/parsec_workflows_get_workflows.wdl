version 1.0

task ParsecWorkflowsGetWorkflows {
  input {
    String? workflow_id
    String? name
    Boolean? published
  }
  command <<<
    parsec workflows get_workflows \
      ~{if defined(workflow_id) then ("--workflow_id " +  '"' + workflow_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (published) then "--published" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    workflow_id: "Encoded workflow ID (incompatible with ``name``)"
    name: "Filter by name of workflow (incompatible with\\n``workflow_id``). If multiple names match the given\\nname, all the workflows matching the argument will be\\nreturned."
    published: "if ``True``, return also published workflows"
  }
  output {
    File out_stdout = stdout()
  }
}