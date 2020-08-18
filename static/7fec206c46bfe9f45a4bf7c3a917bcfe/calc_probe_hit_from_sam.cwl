class: CommandLineTool
id: ../../../calc_probe_hit_from_sam.py.cwl
inputs:
- id: gtf
  doc: Input is GTF instead of SAM
  type: boolean
  inputBinding:
    prefix: --gtf
- id: start_base
  doc: Start base is 0 or 1-based index
  type: string
  inputBinding:
    prefix: --start_base
- id: end_base
  doc: End base is 0 or 1-based index
  type: string
  inputBinding:
    prefix: --end_base
- id: output
  doc: 'Output filename (default: stdout)'
  type: string
  inputBinding:
    prefix: --output
- id: calculate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: probe
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: hit
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sam
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: alignment
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- calc_probe_hit_from_sam.py
