class: CommandLineTool
id: rebaler.cwl
inputs:
- id: direct
  doc: 'If set, Rebaler will polish the given genome without first producing an unpolished
    version (default: False)'
  type: boolean
  inputBinding:
    prefix: --direct
- id: threads
  doc: 'Number of threads to use for alignment and polishing (default: 8)'
  type: string
  inputBinding:
    prefix: --threads
- id: random
  doc: 'If a part of the reference is missing, replace it with random sequence (default:
    leave it as the reference sequence)'
  type: boolean
  inputBinding:
    prefix: --random
outputs: []
cwlVersion: v1.1
baseCommand:
- rebaler
