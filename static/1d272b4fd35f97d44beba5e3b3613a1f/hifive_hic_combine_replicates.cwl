class: CommandLineTool
id: hifive_hic_combine_replicates.cwl
inputs:
- id: q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- hifive
- hic-combine-replicates
