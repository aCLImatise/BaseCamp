class: CommandLineTool
id: synapse_get_provenance.cwl
inputs:
- id: in_id
  doc: "Synapse ID of entity whose provenance we are\naccessing."
  type: long?
  inputBinding:
    prefix: --id
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
- get-provenance
