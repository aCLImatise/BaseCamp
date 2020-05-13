class: CommandLineTool
id: kallisto_index.cwl
inputs:
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: make_unique
  doc: Replace repeated target names with unique names
  type: boolean
  inputBinding:
    prefix: --make-unique
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- index
