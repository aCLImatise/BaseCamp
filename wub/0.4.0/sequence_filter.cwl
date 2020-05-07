class: CommandLineTool
id: sequence_filter.py.cwl
inputs:
- id: input_fast_x
  doc: 'Input file (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: output_fast_x
  doc: 'Output file (default: stdout).'
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
- id: q
  doc: Minimum mean quality value (0.0).
  type: long
  inputBinding:
    prefix: -q
- id: l
  doc: Minimum length (0).
  type: long
  inputBinding:
    prefix: -l
- id: c
  doc: Reverse complement sequences.
  type: boolean
  inputBinding:
    prefix: -c
- id: u
  doc: Maximum length (None).
  type: long
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence_filter.py
