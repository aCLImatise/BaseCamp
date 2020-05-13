class: CommandLineTool
id: sequence_subtract.py.cwl
inputs:
- id: input_fast_x_bait
  doc: 'First input file (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: input_fast_x_target
  doc: Second input file.
  type: string
  inputBinding:
    position: 1
- id: output_fast_x
  doc: 'Output file (default: stdout).'
  type: string
  inputBinding:
    position: 2
- id: i
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: Output format (fastq).
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence_subtract.py
