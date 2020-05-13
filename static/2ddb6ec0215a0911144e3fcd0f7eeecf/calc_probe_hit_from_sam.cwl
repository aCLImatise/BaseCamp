class: CommandLineTool
id: calc_probe_hit_from_sam.py.cwl
inputs:
- id: gtf
  doc: Input is GTF instead of SAM
  type: boolean
  inputBinding:
    prefix: --gtf
- id: start_base
  doc: '{0,1}    Start base is 0 or 1-based index'
  type: boolean
  inputBinding:
    prefix: --start_base
- id: end_base
  doc: '{0,1}      End base is 0 or 1-based index'
  type: boolean
  inputBinding:
    prefix: --end_base
- id: output
  doc: 'Output filename (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- calc_probe_hit_from_sam.py
