version 1.0

task SynapseSubmit {
  input {
    File? evaluation_id
    File? evaluation_name
    String? entity_id
    File? file
    Directory? parentid
    String? name
    String? team_name
    String? submitter_alias
    Boolean? used
    Boolean? executed
    Directory? limit_search
  }
  command <<<
    synapse submit \
      ~{if defined(evaluation_id) then ("--evaluationID " +  '"' + evaluation_id + '"') else ""} \
      ~{if defined(evaluation_name) then ("--evaluationName " +  '"' + evaluation_name + '"') else ""} \
      ~{if defined(entity_id) then ("--entityId " +  '"' + entity_id + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(parentid) then ("--parentId " +  '"' + parentid + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(team_name) then ("--teamName " +  '"' + team_name + '"') else ""} \
      ~{if defined(submitter_alias) then ("--submitterAlias " +  '"' + submitter_alias + '"') else ""} \
      ~{if (used) then "--used" else ""} \
      ~{if (executed) then "--executed" else ""} \
      ~{if defined(limit_search) then ("--limitSearch " +  '"' + limit_search + '"') else ""}
  >>>
  parameter_meta {
    evaluation_id: "Evaluation ID where the entity/file will be submitted"
    evaluation_name: "Evaluation Name where the entity/file will be\\nsubmitted"
    entity_id: "Synapse ID of the entity to be submitted"
    file: "File to be submitted to the challenge"
    parentid: "Synapse ID of project or folder where to upload data"
    name: "Name of the submission"
    team_name: "Submit of behalf of a registered team"
    submitter_alias: "A nickname, possibly for display in leaderboards"
    used: "[target [target ...]]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) from which the\\nspecified entity is derived"
    executed: "[target [target ...]]\\nSynapse ID, a url, or a local file path (of a file\\npreviouslyuploaded to Synapse) that was executed to\\ngenerate the specified entity"
    limit_search: "Synapse ID of a container such as project or folder to\\nlimit search for provenance files.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}