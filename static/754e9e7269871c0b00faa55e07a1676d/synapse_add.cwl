class: CommandLineTool
id: synapse_add.cwl
inputs:
- id: in_parentid
  doc: "Synapse ID of project or folder where to upload data\n(must be specified if\
    \ --id is not used."
  type: long?
  inputBinding:
    prefix: --parentid
- id: in_id
  doc: Optional Id of entity in Synapse to be updated.
  type: long?
  inputBinding:
    prefix: --id
- id: in_type
  doc: "Type of object, such as \"File\", \"Folder\", or\n\"Project\", to create in\
    \ Synapse. Defaults to \"File\""
  type: File?
  inputBinding:
    prefix: --type
- id: in_name
  doc: Name of data object in Synapse
  type: string?
  inputBinding:
    prefix: --name
- id: in_description
  doc: Description of data object in Synapse.
  type: string?
  inputBinding:
    prefix: --description
- id: in_description_file
  doc: "Path to a markdown file containing description of\nproject/folder"
  type: File?
  inputBinding:
    prefix: --descriptionFile
- id: in_used
  doc: "[target ...], -used [target ...]\nSynapse ID, a url, or a local file path\
    \ (of a file\npreviouslyuploaded to Synapse) from which the\nspecified entity\
    \ is derived"
  type: boolean?
  inputBinding:
    prefix: --used
- id: in_executed
  doc: "[target ...], -executed [target ...]\nSynapse ID, a url, or a local file path\
    \ (of a file\npreviouslyuploaded to Synapse) that was executed to\ngenerate the\
    \ specified entity"
  type: boolean?
  inputBinding:
    prefix: --executed
- id: in_limit_search
  doc: "Synapse ID of a container such as project or folder to\nlimit search for provenance\
    \ files."
  type: Directory?
  inputBinding:
    prefix: --limitSearch
- id: in_no_force_version
  doc: "Do not force a new version to be created if the\ncontents of the file have\
    \ not changed. The default is\na new version is created."
  type: boolean?
  inputBinding:
    prefix: --noForceVersion
- id: in_annotations
  doc: "Annotations to add as a JSON formatted string, should\nevaluate to a dictionary\
    \ (key/value pairs). Example:\n'{\"foo\": 1, \"bar\":\"quux\"}'"
  type: string?
  inputBinding:
    prefix: --annotations
- id: in_replace
  doc: "Replace all existing annotations with the given\nannotations\n"
  type: boolean?
  inputBinding:
    prefix: --replace
- id: in_file
  doc: file to be added to synapse.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- synapse
- add
