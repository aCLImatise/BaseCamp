class: CommandLineTool
id: metaSNV_post.py.cwl
inputs:
- id: proj
  doc: project name
  type: string
  inputBinding:
    position: 0
- id: b
  doc: 'Coverage breadth: minimal horizontal genome coverage percentage per sample
    per species (default: 40.0)'
  type: double
  inputBinding:
    prefix: -b
- id: d
  doc: 'Coverage depth: minimal average vertical genome coverage per sample per species
    (default: 5.0)'
  type: double
  inputBinding:
    prefix: -d
- id: m
  doc: 'Minimum number of samples per species (default: 2)'
  type: long
  inputBinding:
    prefix: -m
- id: c
  doc: 'FILTERING STEP II: minimum coverage per position per sample per species (default:
    5.0)'
  type: double
  inputBinding:
    prefix: -c
- id: p
  doc: 'FILTERING STEP II: required proportion of informative samples (coverage non-zero)
    per position (default: 0.5)'
  type: double
  inputBinding:
    prefix: -p
- id: div
  doc: 'Compute diversity measures (default: False)'
  type: boolean
  inputBinding:
    prefix: -div
outputs: []
cwlVersion: v1.1
baseCommand:
- metaSNV_post.py
