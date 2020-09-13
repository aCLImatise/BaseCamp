class: CommandLineTool
id: ../../../synapse_mv.cwl
inputs:
- id: in_id
  doc: Id of entity in Synapse to be moved.
  type: long
  inputBinding:
    prefix: --id
- id: in_parentid
  doc: "Synapse ID of project or folder where file/folder will\nbe moved\n"
  type: long
  inputBinding:
    prefix: --parentid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synapse
- mv
