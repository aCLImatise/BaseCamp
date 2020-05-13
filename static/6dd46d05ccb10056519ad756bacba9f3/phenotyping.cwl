class: CommandLineTool
id: phenotyping.py.cwl
inputs:
- id: input
  doc: 'Input genome. Must be either: a valid contigs file or a json genome file.'
  type: string
  inputBinding:
    prefix: --input
- id: evalue
  doc: E-value for BLAST to Pathways DB
  type: string
  inputBinding:
    prefix: --evalue
- id: json
  doc: Specifies that you're using an already processed JSON input.
  type: string
  inputBinding:
    prefix: --json
outputs: []
cwlVersion: v1.1
baseCommand:
- phenotyping.py
