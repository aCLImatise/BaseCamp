class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaSNV_post.py.cwl
inputs:
- id: coverage_breadth_minimal
  doc: 'Coverage breadth: minimal horizontal genome coverage percentage per sample
    per species (default: 40.0)'
  type: double
  inputBinding:
    prefix: -b
- id: coverage_depth_default
  doc: 'Coverage depth: minimal average vertical genome coverage per sample per species
    (default: 5.0)'
  type: double
  inputBinding:
    prefix: -d
- id: minimum_number_samples
  doc: 'Minimum number of samples per species (default: 2)'
  type: long
  inputBinding:
    prefix: -m
- id: filtering_step_ii_minimum
  doc: 'FILTERING STEP II: minimum coverage per position per sample per species (default:
    5.0)'
  type: double
  inputBinding:
    prefix: -c
- id: filtering_step_ii_required
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
- id: proj
  doc: project name
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- metaSNV_post.py
