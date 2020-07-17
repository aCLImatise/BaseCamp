class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_tetra.cwl
inputs:
- id: threads
  doc: 'number of threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- tetra
