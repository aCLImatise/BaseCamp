class: CommandLineTool
id: lociCounterWithLabels.py.cwl
inputs:
- id: fai_file
  doc: '.fa.fai file (default: None)'
  type: string
  inputBinding:
    prefix: --fai-file
- id: beds
  doc: '[BED_FILES [BED_FILES ...]], --bed-files [BED_FILES [BED_FILES ...]] BED files
    (default: None)'
  type: boolean
  inputBinding:
    prefix: -beds
- id: bed_out
  doc: 'BED file out (default: None)'
  type: string
  inputBinding:
    prefix: --bed-out
- id: labels
  doc: '[BED_LABELS [BED_LABELS ...]], --bed-labels [BED_LABELS [BED_LABELS ...]]
    Use these labels instead of bed file names (default: None)'
  type: boolean
  inputBinding:
    prefix: -labels
outputs: []
cwlVersion: v1.1
baseCommand:
- lociCounterWithLabels.py
