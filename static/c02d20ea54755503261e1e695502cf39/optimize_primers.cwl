class: CommandLineTool
id: optimize_primers.py.cwl
inputs:
- id: hits_fp
  doc: Target primer hits file to generate base frequencies with. [REQUIRED]
  type: string
  inputBinding:
    prefix: --hits_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- optimize_primers.py
