class: CommandLineTool
id: alistat.cwl
inputs:
- id: a
  doc: ': report per-sequence info, not just a summary'
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: ': fast: estimate average %id by sampling (not compatible with -a)'
  type: boolean
  inputBinding:
    prefix: -f
- id: q
  doc: ': quiet: suppress verbose header'
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- alistat
