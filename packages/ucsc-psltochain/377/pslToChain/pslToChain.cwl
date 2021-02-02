class: CommandLineTool
id: ../../../pslToChain.cwl
inputs:
- id: in_ignore
  doc: ignore psl records with negative target strand rather than exiting
  type: boolean
  inputBinding:
    prefix: -ignore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pslToChain
