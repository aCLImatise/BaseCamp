class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nanopore_transcript_abundance.py.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- nanopore_transcript_abundance.py
