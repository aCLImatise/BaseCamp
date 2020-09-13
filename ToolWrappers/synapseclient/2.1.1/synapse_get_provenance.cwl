class: CommandLineTool
id: ../../../synapse_get_provenance.cwl
inputs:
- id: in_id
  doc: "Synapse ID of entity whose provenance we are\naccessing."
  type: long
  inputBinding:
    prefix: --id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- get-provenance
