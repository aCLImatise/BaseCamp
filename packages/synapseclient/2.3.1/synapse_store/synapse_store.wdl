version 1.0

task SynapseStore {
  input {
    Int? parentid
    Int? id
    File? type
    String? name
    String? description
    File? description_file
    Boolean? used
    Boolean? executed
    Directory? limit_search
    Boolean? no_force_version
    String? annotations
    Boolean? replace
    File file_added_synapse
  }
  command <<<
    synapse store \
      ~{file_added_synapse} \
      ~{if defined(parentid) then ("--parentid " +  '"' + parentid + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(description_file) then ("--descriptionFile " +  '"' + description_file + '"') else ""} \
      ~{if (used) then "--used" else ""} \
      ~{if (executed) then "--executed" else ""} \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""} \
      ~{if (no_force_version) then "--noForceVersion" else ""} \
      ~{if defined(annotations) then ("--annotations " +  '"' + annotations + '"') else ""} \
      ~{if (replace) then "--replace" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0"
  }
  parameter_meta {
    parentid: "Synapse ID of project or folder where to upload data\\n(must be specified if --id is not used."
    id: "Optional Id of entity in Synapse to be updated."
    type: "Type of object, such as \\\"File\\\", \\\"Folder\\\", or\\n\\\"Project\\\", to create in Synapse. Defaults to \\\"File\\\""
    name: "Name of data object in Synapse"
    description: "Description of data object in Synapse."
    description_file: "Path to a markdown file containing description of\\nproject/folder"
    used: "[target ...], -used [target ...]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) from which the\\nspecified entity is derived"
    executed: "[target ...], -executed [target ...]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) that was executed to\\ngenerate the specified entity"
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search for provenance files."
    no_force_version: "Do not force a new version to be created if the\\ncontents of the file have not changed. The default is\\na new version is created."
    annotations: "Annotations to add as a JSON formatted string, should\\nevaluate to a dictionary (key/value pairs). Example:\\n'{\\\"foo\\\": 1, \\\"bar\\\":\\\"quux\\\"}'"
    replace: "Replace all existing annotations with the given\\nannotations\\n"
    file_added_synapse: "file to be added to synapse."
  }
  output {
    File out_stdout = stdout()
  }
}