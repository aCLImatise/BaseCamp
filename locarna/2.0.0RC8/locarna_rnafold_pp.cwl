class: CommandLineTool
id: locarna_rnafold_pp.cwl
inputs:
- id: force_ali_fold
  doc: Force alifold for single sequences
  type: boolean
  inputBinding:
    prefix: --force-alifold
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna_rnafold_pp
