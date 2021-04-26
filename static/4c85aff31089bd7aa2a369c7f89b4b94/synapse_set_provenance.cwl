class: CommandLineTool
id: synapse_set_provenance.cwl
inputs:
- id: in_id
  doc: "Synapse ID of entity whose provenance we are\naccessing."
  type: long?
  inputBinding:
    prefix: --id
- id: in_name
  doc: Name of the activity that generated the entity
  type: string?
  inputBinding:
    prefix: --name
- id: in_description
  doc: Description of the activity that generated the entity
  type: string?
  inputBinding:
    prefix: --description
- id: in_output_provenance_record
  doc: "[OUTPUT_FILE], -output [OUTPUT_FILE], --output [OUTPUT_FILE]\nOutput the provenance\
    \ record in JSON format"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_used
  doc: "[target ...], --used [target ...]\nSynapse ID, a url, or a local file path\
    \ (of a file\npreviouslyuploaded to Synapse) from which the\nspecified entity\
    \ is derived"
  type: boolean?
  inputBinding:
    prefix: -used
- id: in_executed
  doc: "[target ...], --executed [target ...]\nSynapse ID, a url, or a local file\
    \ path (of a file\npreviouslyuploaded to Synapse) that was executed to\ngenerate\
    \ the specified entity"
  type: boolean?
  inputBinding:
    prefix: -executed
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
- set-provenance
