class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tbprofiler_get_mutation.py.cwl
inputs:
- id: sample_file
  doc: ''
  type: string
  inputBinding:
    prefix: --sample_file
- id: dir
  doc: ''
  type: string
  inputBinding:
    prefix: --dir
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
