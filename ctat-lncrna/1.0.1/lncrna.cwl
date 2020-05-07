class: CommandLineTool
id: lncrna.cwl
inputs:
- id: web
  doc: 'flag if you want website written visualizing transcripts that were filtered
    out (default: False)'
  type: boolean
  inputBinding:
    prefix: --web
- id: last_z
  doc: 'lastz software (default: None)'
  type: string
  inputBinding:
    prefix: --lastz
- id: bed_tools
  doc: 'bedtools software (default: None)'
  type: string
  inputBinding:
    prefix: --bedtools
- id: lift_over
  doc: 'liftover software (default: None)'
  type: string
  inputBinding:
    prefix: --liftover
outputs: []
cwlVersion: v1.1
baseCommand:
- lncrna
