class: CommandLineTool
id: refseq_masher.cwl
inputs:
- id: verbose
  doc: Logging verbosity (-v for logging warnings; -vvv for logging debug info)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- refseq_masher
