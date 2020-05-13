class: CommandLineTool
id: run_tipp_tool.py.cwl
inputs:
- id: gene
  doc: use GENE's reference package
  type: string
  inputBinding:
    prefix: --gene
- id: action
  doc: Run ACTION
  type: string
  inputBinding:
    prefix: --action
- id: output
  doc: OUTPUT directory
  type: string
  inputBinding:
    prefix: --output
- id: prefix
  doc: PREFIX
  type: string
  inputBinding:
    prefix: --prefix
- id: input
  doc: INPUT destination
  type: string
  inputBinding:
    prefix: --input
- id: threshold
  doc: threshold for classification
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- run_tipp_tool.py
