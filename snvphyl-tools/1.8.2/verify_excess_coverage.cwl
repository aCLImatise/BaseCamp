class: CommandLineTool
id: ../../../verify_excess_coverage.pl.cwl
inputs:
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: max_dev
  doc: ''
  type: boolean
  inputBinding:
    prefix: --max-dev
- id: bam
  doc: ''
  type: boolean
  inputBinding:
    prefix: --bam
- id: num_cpu
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: max_std_dev
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- verify_excess_coverage.pl
