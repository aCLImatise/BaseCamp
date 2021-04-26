class: CommandLineTool
id: synapse_submit.cwl
inputs:
- id: in_evaluation_id
  doc: Evaluation ID where the entity/file will be submitted
  type: File?
  inputBinding:
    prefix: --evaluationID
- id: in_evaluation_name
  doc: "Evaluation Name where the entity/file will be\nsubmitted"
  type: File?
  inputBinding:
    prefix: --evaluationName
- id: in_entity_id
  doc: Synapse ID of the entity to be submitted
  type: string?
  inputBinding:
    prefix: --entityId
- id: in_file
  doc: File to be submitted to the challenge
  type: File?
  inputBinding:
    prefix: --file
- id: in_parentid
  doc: Synapse ID of project or folder where to upload data
  type: Directory?
  inputBinding:
    prefix: --parentId
- id: in_name
  doc: Name of the submission
  type: string?
  inputBinding:
    prefix: --name
- id: in_team_name
  doc: Submit of behalf of a registered team
  type: string?
  inputBinding:
    prefix: --teamName
- id: in_submitter_alias
  doc: A nickname, possibly for display in leaderboards
  type: string?
  inputBinding:
    prefix: --submitterAlias
- id: in_used
  doc: "[target ...]   Synapse ID, a url, or a local file path (of a file\npreviouslyuploaded\
    \ to Synapse) from which the\nspecified entity is derived"
  type: boolean?
  inputBinding:
    prefix: --used
- id: in_executed
  doc: "[target ...]\nSynapse ID, a url, or a local file path (of a file\npreviouslyuploaded\
    \ to Synapse) that was executed to\ngenerate the specified entity"
  type: boolean?
  inputBinding:
    prefix: --executed
- id: in_limit_search
  doc: "Synapse ID of a container such as project or folder to\nlimit search for provenance\
    \ files.\n"
  type: Directory?
  inputBinding:
    prefix: --limitSearch
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.3.1--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- synapse
- submit
