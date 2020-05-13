class: CommandLineTool
id: split_fastx.py.cwl
inputs:
- id: input_fast_x
  doc: 'Input file (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    position: 1
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
- id: b
  doc: Batch size (None).
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fastx.py
