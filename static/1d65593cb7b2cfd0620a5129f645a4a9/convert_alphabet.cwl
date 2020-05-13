class: CommandLineTool
id: convert_alphabet.py.cwl
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
- id: d
  doc: RNA->DNA alphabet conversion.
  type: boolean
  inputBinding:
    prefix: -D
- id: r
  doc: DNA->RNA alphabet conversion.
  type: boolean
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- convert_alphabet.py
