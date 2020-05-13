class: CommandLineTool
id: calculate_coverage.py.cwl
inputs:
- id: input_fast_x
  doc: 'Input (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: f
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: Genome size (None).
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: Save pickled results in this file.
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- calculate_coverage.py
