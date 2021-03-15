version 1.0

task SynapseCreate {
  input {
    Int? parentid
    Directory? name
    Directory? description
    File? description_file
  }
  command <<<
    synapse create \
      ~{if defined(parentid) then ("--parentid " +  '"' + parentid + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(description_file) then ("--descriptionFile " +  '"' + description_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.0--pyh3252c3a_0"
  }
  parameter_meta {
    parentid: "Synapse ID of project or folder where to place folder\\n[not used with project]"
    name: "Name of folder/project."
    description: "Description of project/folder"
    description_file: "Path to a markdown file containing description of\\nproject/folder\\n"
  }
  output {
    File out_stdout = stdout()
  }
}