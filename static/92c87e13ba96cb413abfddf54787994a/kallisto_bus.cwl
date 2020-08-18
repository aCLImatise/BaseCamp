class: CommandLineTool
id: ../../../kallisto_bus.cwl
inputs:
- id: verbose
  doc: Print out progress information every 1M proccessed reads
  type: boolean
  inputBinding:
    prefix: --verbose
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- kallisto
- bus
