class: CommandLineTool
id: build_summary.py.cwl
inputs:
- id: input
  doc: The input report containg detailed information about fusion genes found.
  type: string
  inputBinding:
    prefix: --input
- id: viruses
  doc: The input report containg detailed information about viruses/bacteria/found
    found.
  type: string
  inputBinding:
    prefix: --viruses
- id: output
  doc: The output summary of gene/transcript fusions found.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- build_summary.py
