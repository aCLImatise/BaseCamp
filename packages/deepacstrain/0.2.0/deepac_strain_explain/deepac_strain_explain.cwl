class: CommandLineTool
id: ../../../deepac_strain_explain.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepac-strain
- explain
