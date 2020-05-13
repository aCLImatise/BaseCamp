class: CommandLineTool
id: tbprofiler_get_mutation.py.cwl
inputs:
- id: gene
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: mutation
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_get_mutation.py
